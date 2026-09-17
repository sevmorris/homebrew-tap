# homebrew-tap

Homebrew tap for [Seven Morris](https://github.com/sevmorris)' macOS apps.

One cask is live. The other two are deprecated: those apps update themselves
now, and are installed from the DMG on their own releases page.

## Install

```sh
brew install --cask sevmorris/tap/fl2601
```

Or add the tap once, then install by name:

```sh
brew tap sevmorris/tap
brew install --cask fl2601
```

## Casks

| Cask | App | Status | |
| --- | --- | --- | --- |
| `fl2601` | Passphrase text encryption, PBKDF2 + AES-256-GCM | live | [repo](https://github.com/sevmorris/FL2601) · [site](https://sevmorris.github.io/FL2601/) |
| `doublender` | Guest-side double-ender podcast recorder | deprecated 2026-09-17 | [releases](https://github.com/sevmorris/DoublEnder/releases) · [site](https://sevmorris.github.io/DoublEnder/) |
| `waxonwaxoff` | Podcast audio prep: WaxOn conditioning, WaxOff delivery | deprecated 2026-09-17 | [releases](https://github.com/sevmorris/WaxOnWaxOff/releases) · [site](https://sevmorris.github.io/WaxOnWaxOff/) |

The deprecated casks still install and still point at a real, current, notarized
DMG — Homebrew just prints a warning first. They are kept rather than deleted so
an existing `brew upgrade` says where the app went instead of failing on a cask
that vanished. Nothing bumps their version any more, so they will fall behind
the app; install from the releases page instead.

`waxonwaxoff` requires Apple Silicon and macOS 14 or later, and declares both.
The other two run on any Mac their stated minimum supports.

## Updates

**`fl2601` — Homebrew is the update path, by design.** The app is sandboxed with
no network entitlement at all (it derives keys and encrypts in memory, and text
moves via the clipboard), so it cannot check for its own updates and never
will. `distribute.sh --bump-cask` bumps this cask on publish, so
`brew upgrade --cask` tracks the latest build.

**Every other app checks GitHub for itself.** Each ships an `UpdateChecker` that
reads its repo's latest release and offers the DMG. That is the one channel that
covers all of them — which is why the two casks above were retired rather than
the remaining apps being added here. Having both meant installing an in-app
update replaced the app underneath Homebrew, leaving Homebrew's records
describing a version that was no longer on disk.
