# homebrew-tap

Homebrew tap for [Seven Morris](https://github.com/sevmorris)' macOS apps.

## Install

```sh
brew install --cask sevmorris/tap/doublender
brew install --cask sevmorris/tap/fl2601
brew install --cask sevmorris/tap/waxonwaxoff
```

Or add the tap once, then install by name:

```sh
brew tap sevmorris/tap
brew install --cask doublender
brew install --cask fl2601
brew install --cask waxonwaxoff
```

## Casks

| Cask | App | |
| --- | --- | --- |
| `doublender` | Guest-side double-ender podcast recorder | [repo](https://github.com/sevmorris/DoublEnder) · [site](https://sevmorris.github.io/DoublEnder/) |
| `fl2601` | Passphrase text encryption, PBKDF2 + AES-256-GCM | [repo](https://github.com/sevmorris/FL2601) · [site](https://sevmorris.github.io/FL2601/) |
| `waxonwaxoff` | Podcast audio prep: WaxOn conditioning, WaxOff delivery | [repo](https://github.com/sevmorris/WaxOnWaxOff) · [site](https://sevmorris.github.io/WaxOnWaxOff/) |

`waxonwaxoff` requires Apple Silicon and macOS 14 or later, and declares both.
The other two run on any Mac their stated minimum supports.

## Updates

Each app's release script bumps its own cask here on publish — `release.sh` for
DoublEnder and WaxOn/WaxOff, `distribute.sh --bump-cask` for FL2601 — so
`brew upgrade --cask` always tracks the latest published build.

DoublEnder and FL2601 do not check for updates themselves. FL2601 in particular
ships with no network entitlement at all, so `brew upgrade` is its update path
by design rather than by omission.

WaxOn/WaxOff is the exception: it checks GitHub for a newer release and offers a
**Download** button, which opens the DMG rather than installing it. Taking that
route leaves Homebrew's records stale until the next `brew upgrade --cask`
reinstalls over the top. If you installed it with Homebrew, upgrade it with
Homebrew.
