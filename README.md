# Maid-chan wa Meido-chuu — Unofficial PT-BR Patch

Fan Portuguese (Brazil) text patch for **メイドちゃんは迷途ちゅう** (*Maid-chan wa Meido-chuu*) by **CloverGAME**.

- VNDB: [v55899](https://vndb.org/v55899)
- Engine: Kirikiri
- Language: Portuguese without accents (ASCII-friendly for the engine)
- Quality: **machine-assisted / MTL** — expect quirks

This is an **unofficial** fan project. Not affiliated with CloverGAME. You need a legitimate copy of the game.

---

## Contents

| Path | Purpose |
|------|---------|
| `_pt_files/data.xp3` | Portuguese scenario + font tweaks |
| `_pt_files/data.xp3.index` | Matching index sidecar |
| `INSTALAR.bat` | Install patch (creates JP backup) |
| `RESTAURAR_JP.bat` | Restore Japanese from backup |
| `LICENSE` | Fan-patch disclaimer |

---

## Install (Windows)

1. Own / install the original game.
2. Download this repo (or the Release zip).
3. Copy **all** of these files into the **game folder** (same folder as `メイドちゃんは迷途ちゅう.exe`):
   - `_pt_files\`
   - `INSTALAR.bat`
   - `RESTAURAR_JP.bat`
4. Run `INSTALAR.bat`.
5. Launch **`メイドちゃんは迷途ちゅう.exe`** only.  
   Do **not** use `startup.exe` / `do_not_use_startup.exe`.

### Uninstall / restore Japanese

Run `RESTAURAR_JP.bat` (needs the `.bak_jp` backups created on install).

---

## What the patch changes

Only these archives inside the game directory:

- `data.xp3`
- `data.xp3.index`

Inside them:

- Scenario scripts (`scenario/*.ks`, `macro.ks`) → Portuguese
- Font tweaks for readability: Meiryo, message size 36, indent 40, tighter interval 0

No `version.dll`, no `patch.xp3`, no loose system scripts.

---

## Notes / troubleshooting

- If you see **すでに起動しています**, the game is already running — close all instances and try again.
- Always keep `data.xp3.bak_jp` / `data.xp3.index.bak_jp` if you want to revert.
- Saves made while patched usually still work after restore, but keep your own save backups.

---

## Credits

- Original game: **CloverGAME**
- This patch: unofficial fan MTL project

---

## License / legal

See [`LICENSE`](LICENSE). Do not redistribute the full game. Patch only.
