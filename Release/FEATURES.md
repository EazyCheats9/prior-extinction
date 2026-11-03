# Prior Extinction hub: features by tier (2026-10-01)

From the hub source's menu (`PX.MENU_LAYOUT`) and `Tools/build-free.js` (what free locks). Settings nested under a
feature come with it. Free = premium minus the locked rows, with Hitbox / Reach capped at 5x (premium 10x).

## Free
**Stats:** Auto Water, Auto Cleanliness, Infinite Oxygen, Freeze Food, Freeze Water
**Combat:** Hitbox Expander (up to 5x; visualize, opacity, parts), Reach (up to 5x; visualize, opacity, parts),
Instant Attack (attack speed), Silent Aim
**Render:** Player ESP (name, type, stage, gender, health, stamina, food / water / infection bars and numbers,
infected tag, weight, bleed, pack, pack leader, distance, text and bar sizes, range), Chams, Tracers, Corpse ESP,
Meat ESP, Small / Medium / Large Fossil ESP, Vegetation ESP (only my diet, hide eaten, range, max labels),
Clay Deposits, Fullbright, No Fog, No Sleep Screen, Show Module List
**Tools:** Save Dino (manual, save direction), No Fall Damage, Auto Walk / Trot / Run / Sprint, Auto Grow, Anti AFK,
Mod Check (admin alert), Unload Key, GUI themes (EZ GUI Fusion: Sunset / Ice / Galaxy, or EZV4)

## Premium (everything in Free, plus)
**AutoFarm:** Fossil Farm, AFK Farm (speed, avoid radius, simulate walking, hide & heal, admin kick, flee, unstuck),
Legit Farm (never stand still, avoid / run / search distance, leave scraps, flee, fly away, unstuck, tabbed-out
farming, rest to heal, admin kick), Auto Switch Dino (6 slots, gender, smallest to biggest, unlock new dinos),
Farm Timer, AFK Amber Farm, Rejoin (map, farm dino, auto-leave empty servers), Auto Spawn, FPS Saver
**Stats:** Force Eat (fast eat, eat only when hungry, leave scraps)
**Combat:** Hitbox / Reach up to 10x, No Attack Cooldown
**Render:** Fish ESP, Show Infection (corpses), Custom Time, No Blur, Disable Weather, Skin changer
**Tools:** Fly, Insta Turn, Quick Turn, Turn Buttons (mobile), Auto-Save at Health % (incl. bleed), Mod Check
Auto Leave, Stats Card (dino name, stage, mass gain, weight, growth timer, **Stage Timer**, nutrition, wellbeing,
drag, hide with menu), Minimap (players / corpses / fossils), Unlimited Zoom, FOV Changer

## Admin (owner only, local: `prior-admin-fusion.lua`, never on the site)
Everything in Premium, loaded straight off disk (no key), plus an **Admin** tab:
Anti-Hit (other script users can't hit you), Show Script Users (purple EZ tags), Carry Any Corpse (any weight, keybind).
Also: cursor rescue when the menu closes, clean teardown with the hub.
Needs `ADMIN_SCRIPT_KEY` set on Render and in the launcher for Anti-Hit / EZ tags to work live.

## In this release (not live yet)
- **Stage Timer rebuilt (premium):** best-case time to the next stage from the dino's own ticks, with the in-stage
  slowdown (~75%) integrated and the top stage's (1 - progress)^2.5 curve; the old one read up to ~12x short.
- **Stats Card nutrition (premium):** shows the nutrients the species eats (was "0%" on herbivores).
- "Next growth hit" counts from 30 s (ticks are 30 s).
- Xeno-only workarounds (staged 2026-09-28): other executors run the hub as written.
- Memory Warning: removed (never shipped).
- **Admin:** only one Admin tab, even after the admin script restarts in the same server.
