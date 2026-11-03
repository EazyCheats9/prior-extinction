// Plain-text comparison only: reads two files as text, never runs or decodes them.
// usage: node compare.js <theirs> <ours> [<ours2> ...]
const fs = require('fs');

const defRe = /function\s+[A-Za-z_][A-Za-z0-9_]*\.([A-Za-z_][A-Za-z0-9_]*)\s*\(|[A-Za-z_][A-Za-z0-9_]*\.([A-Za-z_][A-Za-z0-9_]*)\s*=\s*function\s*\(/g;
const fieldRe = /\.([A-Za-z_][A-Za-z0-9_]*)/g;

function defs(text) {
  const out = [];
  let m;
  while ((m = defRe.exec(text))) out.push(m[1] || m[2]);
  return out;
}
function custom(name) {
  // Roblox API members are PascalCase; keep our own style: camelCase or CAPS_WITH_UNDERSCORES.
  return name.length >= 5 && (/^[a-z]/.test(name) && /[A-Z]/.test(name) || /^[A-Z][A-Z0-9_]+$/.test(name));
}
function fields(text) {
  const s = new Set();
  let m;
  while ((m = fieldRe.exec(text))) if (custom(m[1])) s.add(m[1]);
  return s;
}
function firstSeen(seq) {
  const seen = new Set();
  return seq.filter(x => !seen.has(x) && seen.add(x));
}
function lcs(a, b) {
  const prev = new Uint16Array(b.length + 1);
  const dirs = [];
  for (let i = 1; i <= a.length; i++) {
    const row = new Uint16Array(b.length + 1);
    const d = new Uint8Array(b.length + 1);
    for (let j = 1; j <= b.length; j++) {
      if (a[i - 1] === b[j - 1]) { row[j] = prev[j - 1] + 1; d[j] = 1; }
      else if (prev[j] >= row[j - 1]) { row[j] = prev[j]; d[j] = 2; }
      else { row[j] = row[j - 1]; d[j] = 3; }
    }
    dirs.push(d);
    prev.set(row);
  }
  const out = [];
  let i = a.length, j = b.length;
  while (i > 0 && j > 0) {
    const d = dirs[i - 1][j];
    if (d === 1) { out.push(a[i - 1]); i--; j--; } else if (d === 2) i--; else j--;
  }
  return out.reverse();
}

const [theirsPath, ...ourPaths] = process.argv.slice(2);
const theirs = fs.readFileSync(theirsPath, 'latin1');
const tDefs = firstSeen(defs(theirs));
const tFields = fields(theirs);
console.log('theirs', theirsPath.split('/').pop(), 'bytes', theirs.length, 'definitions', tDefs.length, 'custom fields', tFields.size);

for (const p of ourPaths) {
  const ours = fs.readFileSync(p, 'latin1');
  const oDefs = firstSeen(defs(ours));
  const oFields = fields(ours);
  const sharedDefs = oDefs.filter(x => tDefs.includes(x));
  const ordered = lcs(tDefs, oDefs);
  const sharedFields = [...oFields].filter(x => tFields.has(x));
  const onlyOurs = [...oFields].filter(x => !tFields.has(x));
  const onlyTheirs = [...tFields].filter(x => !oFields.has(x));
  console.log('\nours', p.split('/').pop());
  console.log(' our definitions', oDefs.length, 'also in theirs', sharedDefs.length, 'same order', ordered.length);
  console.log(' our custom fields', oFields.size, 'also in theirs', sharedFields.length);
  console.log(' only ours', onlyOurs.length, onlyOurs.slice(0, 25).join(' '));
  console.log(' only theirs', onlyTheirs.length, onlyTheirs.slice(0, 40).join(' '));
  fs.writeFileSync(p + '.ordered-match.txt', ordered.join('\n'));
}
