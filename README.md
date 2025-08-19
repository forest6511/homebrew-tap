# Homebrew Tap for forest6511

This is a Homebrew tap for forest6511's tools.

## Installation

```bash
brew tap forest6511/tap
brew install forest6511/tap/gdl
```

**Note**: Use the full tap name `forest6511/tap/gdl` to avoid conflicts with the GNOME gdl package in homebrew/core.

## Available Formulas

- **gdl**: Fast, concurrent file downloader for Go (formerly godl)

## Migration from godl

If you have the old `godl` installed:

```bash
brew uninstall godl
brew install gdl
```

## Updating

```bash
brew update
brew upgrade gdl
```
