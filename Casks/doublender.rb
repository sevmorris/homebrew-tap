cask "doublender" do
  version "2.5.4lr"
  sha256 "d0b9a8b9dac9b460b1750b7aec45b3dc34c0cf10751d5d69d3cc2699c9eff2fb"

  url "https://github.com/sevmorris/DoublEnder/releases/download/v#{version}/DoublEnder-v#{version}.dmg"
  name "DoublEnder"
  desc "Guest-side double-ender podcast recorder"
  homepage "https://sevmorris.github.io/DoublEnder/"

  # Retired 2026-09-17 in favour of the app's own update check — DoublEnder has
  # had one since the recorder-hardening release, so the note in this tap's
  # README claiming it cannot check for itself was out of date. See the longer
  # explanation in waxonwaxoff.rb. The cask stays rather than being deleted so
  # anyone who installed through it is told where the app went.
  deprecate! date: "2026-09-17", because: "is updated by the app itself now — install it from its releases page"

  # 13.0 from both the app's LSMinimumSystemVersion and the repo's stated
  # environment. No `arch:` here on purpose — the README says Apple Silicon and
  # Intel, so constraining it would be a guess in the direction that breaks
  # installs.
  depends_on macos: :ventura

  app "DoublEnder.app"

  zap trash: [
    "~/Library/Caches/io.github.sevmorris.DoublEnder",
    "~/Library/Preferences/io.github.sevmorris.DoublEnder.plist",
    "~/Library/Saved Application State/io.github.sevmorris.DoublEnder.savedState",
  ]
end
