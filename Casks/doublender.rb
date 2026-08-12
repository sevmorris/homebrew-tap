cask "doublender" do
  version "2.1.2lr"
  sha256 "5bcec5b273db47308ee5febf888007bedaf551fb35e9e4c44b96ce78ef803125"

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
