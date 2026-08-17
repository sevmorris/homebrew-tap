cask "doublender" do
  version "2.3.2lr"
  sha256 "e240d765350bd2aab188d0a153200b04bb6aa233bdeb38a82cd4432a8d2d616b"

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
