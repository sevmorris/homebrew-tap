cask "doublender" do
  version "2.5.1lr"
  sha256 "d46350eab984a2f08458fff5c1032b2fe756fec9e5dbe93911b078b1e9ef7980"

  url "https://github.com/sevmorris/DoublEnder/releases/download/v#{version}/DoublEnder-v#{version}.dmg"
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
