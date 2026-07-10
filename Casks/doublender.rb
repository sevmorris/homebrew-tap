cask "doublender" do
  version "1.7.7lr"
  sha256 "13e65029e374ec6cb2304b0462827bbf4231d40af723277ef6ce49e06f26bbe7"

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
