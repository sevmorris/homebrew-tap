cask "doublender" do
  version "2.3.2lr"
  sha256 "0631156abd1a57d1a0bdc41c831a5947d379ad368b3fcaeab34785fd017e042a"

  url "https://github.com/sevmorris/DoublEnder/releases/download/v#{version}/DoublEnder-v#{version}.dmg",
      verified: "github.com/sevmorris/DoublEnder/"
  name "DoublEnder"
  desc "Guest-side double-ender podcast recorder"
  homepage "https://sevmorris.github.io/DoublEnder/"

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
