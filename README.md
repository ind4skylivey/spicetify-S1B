# spicetify-S1B

Spicetify config using the **text** theme with a custom **CyberpunkPurple** color scheme.

## What's included

- `config-xpui.ini` — Spicetify main config
- `Themes/text/color.ini` — Color schemes including CyberpunkPurple
- `setup.sh` — One-command installer

## Quick setup

```bash
git clone https://github.com/ind4skylivey/spicetify-S1B.git
cd spicetify-S1B
chmod +x setup.sh
./setup.sh
```

Restart Spotify after running the script.

## CyberpunkPurple scheme

| Element | Color |
|---------|-------|
| Accent | `#d100d1` |
| Background | `#0d0221` |
| Text | `#ffffff` |
| Notification | `#05d9e8` |
| Error | `#ff2a6d` |

## After Spotify updates

When Spotify updates, spicetify patches break. Re-apply with:

```bash
spicetify backup && spicetify apply
```

## Requirements

- [Spotify](https://www.spotify.com/download/linux/) (desktop client)
- Bash, curl
