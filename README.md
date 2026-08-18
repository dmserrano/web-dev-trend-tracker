# Web Dev Trend Tracker

A personal, automated weekly digest of what's moving in software development: JS frameworks (React, Vue, Angular, Svelte), frontend tooling, backend frameworks, and AI/agentic dev tooling.

## How it works

Each week, a scheduled research run searches for recent releases, adoption shifts, launches, and deprecations across the tracked areas, then publishes a summary here.

- **[Live site](https://dmserrano.github.io/web-dev-trend-tracker/)** — `index.html`, the latest report, published via GitHub Pages
- **`trend-log.md`** — a running, condensed history of findings from every past run, used to compare week-over-week
- **`reports/`** — the full markdown report for each week, archived by date
- **`reports/meta-*.md`** — per-run notes on gaps, caveats, and known limitations in that week's research (kept separate from the published report)

## Sourcing standard

Every item in a report links to a real, checkable source. Where a claim can't be backed by a verifiable source, the report says so explicitly rather than omitting the caveat — nothing is fabricated.

## Publishing

Reports are generated automatically into this folder, but pushing to GitHub is a manual step, done from a separate plain git clone (not this folder itself) — this folder's file protections prevent git from running reliably inside it.

**One-time setup**, in Terminal:
```
git clone https://github.com/dmserrano/web-dev-trend-tracker.git ~/dev/web-dev-trend-tracker
```

**After each weekly run**, sync and push:
```
~/workspace/trend-tracker/publish.sh
```

This runs the rsync + commit + push in one step, and skips the commit/push if nothing changed.
