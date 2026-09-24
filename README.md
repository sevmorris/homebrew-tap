# homebrew-tap

Homebrew tap for [Seven Morris](https://github.com/sevmorris)' macOS apps.

All three casks are deprecated. DoublEnder and WaxOn/WaxOff update themselves
and are installed from the DMG on their own releases page. FL2601 was retired
on 2026-09-23, with its Windows port.

## Casks

| Cask | App | Status | |
| --- | --- | --- | --- |
| `fl2601` | Passphrase text encryption, PBKDF2 + AES-256-GCM | retired 2026-09-23 | [repo](https://github.com/sevmorris/FL2601) · [site](https://sevmorris.github.io/FL2601/) |
| `doublender` | Guest-side double-ender podcast recorder | deprecated 2026-09-17 | [releases](https://github.com/sevmorris/DoublEnder/releases) · [site](https://sevmorris.github.io/DoublEnder/) |
| `waxonwaxoff` | Podcast audio prep: WaxOn conditioning, WaxOff delivery | deprecated 2026-09-17 | [releases](https://github.com/sevmorris/WaxOnWaxOff/releases) · [site](https://sevmorris.github.io/WaxOnWaxOff/) |

The deprecated casks still install and still point at a real, current, notarized
DMG — Homebrew just prints a warning first. They are kept rather than deleted so
an existing `brew upgrade` says where the app went instead of failing on a cask
that vanished. Nothing bumps their version any more, so they will fall behind
the app; install from the releases page instead.

Not for ever, though: Homebrew disables a deprecated cask a year after its
deprecation date, and a disabled cask no longer installs. `doublender` and
`waxonwaxoff` go on 2027-09-17, `fl2601` on 2027-09-23. Each app's releases page
outlasts its cask.

`waxonwaxoff` requires Apple Silicon and macOS 14 or later, and declares both.
The other two run on any Mac their stated minimum supports.

## Updates

**`fl2601` — retired, and still installable on purpose.** The app gets no
further releases, so the cask stays at 1.2.1, its last build. It is deprecated
rather than deleted because FL2601 must go on decrypting what it encrypted. The
cask installs until Homebrew disables it; the release DMG and the
[web version](https://sevmorris.github.io/FL2601/web/) stay available after
that. Homebrew was this app's only update path, since it is
sandboxed with no network entitlement and cannot check for itself.

**Every other app checks GitHub for itself.** Each ships an `UpdateChecker` that
reads its repo's latest release and offers the DMG. That is the one channel that
covers all of them — which is why the two casks above were retired rather than
the remaining apps being added here. Having both meant installing an in-app
update replaced the app underneath Homebrew, leaving Homebrew's records
describing a version that was no longer on disk.
