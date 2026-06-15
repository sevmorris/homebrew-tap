cask "doublender" do
  version "1.7.6lr"
  sha256 "85f164175e386c9758b7d8a5f54106d20c204f1bf67d4ac292817e4d2657aa65"

  url "https://github.com/sevmorris/DoublEnder/releases/download/v#{version}/DoublEnder-v#{version}.dmg",
      verified: "github.com/sevmorris/DoublEnder/"
  name "DoublEnder"
  desc "Guest-side double-ender podcast recorder"
  homepage "https://sevmorris.github.io/DoublEnder/"

  app "DoublEnder.app"

  zap trash: [
    "~/Library/Preferences/io.github.sevmorris.DoublEnder.plist",
    "~/Library/Saved Application State/io.github.sevmorris.DoublEnder.savedState",
    "~/Library/Caches/io.github.sevmorris.DoublEnder",
  ]
end
