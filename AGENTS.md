# dkdc.sh

Install scripts for dkdc projects. Built with [Zorto](https://zorto.dev/).

## Commands

- `zorto preview --open`: Start dev server (or `bin/preview.sh`)
- `zorto build`: Build site to `public/`

## Scripts

Scripts live in `static/` and are served as raw files:

- `/bookmarks/install.sh` — install bookmarks from source
- `/dkdc-links/install.sh` — install dkdc-links from source
- `/md-cli/install.sh` — install md-cli from source
- `/zorto/install.sh` — install zorto from source

## Adding a new script

1. Create `static/<name>/install.sh`
2. Add a shortcode call to `content/_index.md`:
   ```
   {{ install(name="<name>", display_name="<Name>", url="<homepage>", github="<org/repo>", description="<desc>") }}
   ```
