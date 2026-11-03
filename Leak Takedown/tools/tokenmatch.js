// Plain-text comparison only: tokenises two Lua files as text, never runs them.
// usage: node tokenmatch.js <theirs> <ours> <outDir>
const fs = require('fs');
const path = require('path');

const KW = new Set('and break do else elseif end false for function goto if in local nil not or repeat return then true until while continue'.split(' '));
const GLOBALS = new Set('game workspace script math string table task coroutine os pcall xpcall tostring tonumber type typeof pairs ipairs next select unpack rawget rawset setmetatable getmetatable print warn error assert tick time Instance Vector2 Vector3 CFrame Color3 UDim UDim2 Enum Ray RaycastParams TweenInfo buffer bit32 utf8 getgenv gethui loadstring'.split(' '));
const brand = s => s.replace(/eazycheats|eclipse/gi, 'BRAND').replace(/\bEZ(?=[A-Z_])/g, 'BRAND');

function tokenize(src) {
  const toks = [], comments = [];
  let i = 0, line = 1, prevSig = '';
  const push = (t, l, raw) => { toks.push({ t, line: l, raw }); prevSig = raw; };
  const longClose = p => { const m = /^\[(=*)\[/.exec(src.slice(p, p + 80)); return m ? ']' + m[1] + ']' : null; };
  while (i < src.length) {
    const c = src[i];
    if (c === '\n') { line++; i++; continue; }
    if (/\s/.test(c)) { i++; continue; }
    if (src.startsWith('--', i)) {
      const close = longClose(i + 2);
      const l0 = line;
      let end;
      if (close) { end = src.indexOf(close, i); end = end < 0 ? src.length : end + close.length; }
      else { end = src.indexOf('\n', i); if (end < 0) end = src.length; }
      const body = src.slice(i, end);
      comments.push({ line: l0, text: body.trim() });
      line += (body.match(/\n/g) || []).length;
      i = end;
      continue;
    }
    const close = c === '[' ? longClose(i) : null;
    if (close) {
      let end = src.indexOf(close, i); end = end < 0 ? src.length : end + close.length;
      const body = src.slice(i, end), l0 = line;
      line += (body.match(/\n/g) || []).length;
      push('S:' + brand(body.slice(close.length, -close.length)), l0, body);
      i = end;
      continue;
    }
    if (c === '"' || c === "'") {
      let j = i + 1, out = '';
      while (j < src.length && src[j] !== c && src[j] !== '\n') { if (src[j] === '\\') { out += src[j] + (src[j + 1] || ''); j += 2; } else out += src[j++]; }
      push('S:' + brand(out), line, src.slice(i, j + 1));
      i = j + 1;
      continue;
    }
    const num = /^(0[xX][0-9a-fA-F_]+|\d[\d_]*\.?\d*(?:[eE][+-]?\d+)?|\.\d+)/.exec(src.slice(i, i + 40));
    if (num) { push('N:' + Number(num[0].replace(/_/g, '')), line, num[0]); i += num[0].length; continue; }
    const id = /^[A-Za-z_][A-Za-z0-9_]*/.exec(src.slice(i, i + 200));
    if (id) {
      const w = id[0];
      let t;
      if (KW.has(w) || GLOBALS.has(w)) t = w;
      else if (prevSig === '.' || prevSig === ':') t = brand(w);
      else t = 'ID';
      push(t, line, w);
      i += w.length;
      continue;
    }
    const op = /^(\.\.\.|\.\.=|\.\.|==|~=|<=|>=|\+=|-=|\*=|\/=|::|.)/s.exec(src.slice(i, i + 3))[0];
    push(op, line, op);
    i += op.length;
  }
  return { toks, comments };
}

const [theirsPath, oursPath, outDir] = process.argv.slice(2);
const a = tokenize(fs.readFileSync(theirsPath, 'latin1'));
const b = tokenize(fs.readFileSync(oursPath, 'latin1'));
const K = 40;
const key = (arr, i) => { let s = ''; for (let k = 0; k < K; k++) s += arr[i + k].t + '\u0001'; return s; };
const index = new Map();
for (let i = 0; i + K <= b.toks.length; i++) {
  const k = key(b.toks, i);
  if (!index.has(k)) index.set(k, []);
  index.get(k).push(i);
}
const covered = new Uint8Array(a.toks.length);
const runs = [];
let i = 0;
while (i + K <= a.toks.length) {
  const hits = index.get(key(a.toks, i));
  if (!hits) { i++; continue; }
  let best = 0, bestJ = -1;
  for (const j of hits.slice(0, 20)) {
    let n = 0;
    while (i + n < a.toks.length && j + n < b.toks.length && a.toks[i + n].t === b.toks[j + n].t) n++;
    if (n > best) { best = n; bestJ = j; }
  }
  for (let n = 0; n < best; n++) covered[i + n] = 1;
  runs.push({ len: best, ta: a.toks[i].line, tb: a.toks[i + best - 1].line, oa: b.toks[bestJ].line, ob: b.toks[bestJ + best - 1].line });
  i += best;
}
const cov = covered.reduce((x, y) => x + y, 0);
console.log('theirs tokens', a.toks.length, 'ours tokens', b.toks.length);
console.log('their tokens inside a run of 40+ identical tokens', cov, (100 * cov / a.toks.length).toFixed(1) + '%');
console.log('runs', runs.length);
const regions = (process.env.REGIONS || '').split(',').filter(Boolean).map(r => r.split('-').map(Number));
for (const [from, to] of regions) {
  let all = 0, hit = 0;
  a.toks.forEach((t, n) => { if (t.line >= from && t.line <= to) { all++; hit += covered[n]; } });
  console.log(` region L${from}-L${to}: ${hit} of ${all} tokens (${(100 * hit / Math.max(all, 1)).toFixed(1)}%)`);
}
runs.sort((x, y) => y.len - x.len);
console.log('TOP RUNS (tokens | their lines | our lines)');
for (const r of runs.slice(0, 12)) console.log(' ', r.len, '| L' + r.ta + '-L' + r.tb, '|', r.oa + '-' + r.ob);

// comments that survive word for word
const ourComments = new Set(b.comments.map(c => brand(c.text)));
const same = a.comments.filter(c => c.text.length > 12 && ourComments.has(brand(c.text)));
console.log('their comments', a.comments.length, 'our comments', b.comments.length, 'identical', same.length);
for (const c of same.slice(0, 25)) console.log('  L' + c.line, c.text.slice(0, 110));
console.log('SAMPLE OF THEIR COMMENTS');
for (const c of a.comments.slice(0, 12)) console.log('  L' + c.line, c.text.slice(0, 100));

// long user-facing strings
const str = t => new Set(t.toks.filter(x => x.t.startsWith('S:') && x.t.length > 22 && /\s/.test(x.t)).map(x => x.t.slice(2)));
const sa = str(a), sb = str(b);
const sharedStr = [...sa].filter(x => sb.has(x));
console.log('their long strings', sa.size, 'ours', sb.size, 'identical', sharedStr.length);
sharedStr.sort((x, y) => y.length - x.length);
for (const s of sharedStr.slice(0, 18)) console.log('  ', s.slice(0, 130));

// tuned constants: NAME = number on the shared table
const cre = /^\s*[A-Za-z_][A-Za-z0-9_]*\.([A-Z][A-Z0-9_]{2,})\s*=\s*(-?[\d.]+)\s*(?:--.*)?$/gm;
const cons = f => { const m = new Map(); let x; const s = fs.readFileSync(f, 'latin1'); while ((x = cre.exec(s))) if (!m.has(x[1])) m.set(x[1], x[2]); return m; };
const ca = cons(theirsPath), cb = cons(oursPath);
const sameC = [...ca].filter(([k, v]) => cb.has(k) && Number(cb.get(k)) === Number(v));
const diffC = [...ca].filter(([k, v]) => cb.has(k) && Number(cb.get(k)) !== Number(v));
console.log('their constants', ca.size, 'ours', cb.size, 'same name+value', sameC.length, 'same name, other value', diffC.length);
console.log(' ', sameC.filter(([k]) => /^(MV_|GR_|LF_|FE_|AFK_)/.test(k)).slice(0, 24).map(([k, v]) => k + '=' + v).join(' '));
console.log(' changed:', diffC.slice(0, 15).map(([k, v]) => k + ':' + cb.get(k) + '->' + v).join(' '));

fs.writeFileSync(path.join(outDir, 'matching-runs.tsv'), 'tokens\ttheir_lines\tour_lines\n' + runs.map(r => `${r.len}\tL${r.ta}-L${r.tb}\t${r.oa}-${r.ob}`).join('\n'));
