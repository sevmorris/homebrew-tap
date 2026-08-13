# homebrew-tap

Homebrew tap for [Seven Morris](https://github.com/sevmorris)' macOS apps.

## Install

```sh
brew install --cask sevmorris/tap/doublender
brew install --cask sevmorris/tap/fl2601
```

Or add the tap once, then install by name:

```sh
brew tap sevmorris/tap
brew install --cask doublender
brew install --cask fl2601
```

## Casks

| Cask | App | |
| --- | --- | --- |
| `doublender` | Guest-side double-ender podcast recorder | [repo](https://github.com/sevmorris/DoublEnder) · [site](https://sevmorris.github.io/DoublEnder/) |
| `fl2601` | Passphrase text encryption, PBKDF2 + AES-256-GCM | [repo](https://github.com/sevmorris/FL2601) · [site](https://sevmorris.github.io/FL2601/) |

## Updates

Each app's release script bumps its own cask here on publish — `release.sh`
for DoublEnder, `distribute.sh --bump-cask` for FL2601 — so
`brew upgrade --cask` always tracks the latest published build.

Neither app checks for updates on its own. FL2601 in particular ships with no
network entitlement at all, so `brew upgrade` is the update path by design
rather than by omission.
