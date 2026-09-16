cask "doublender" do
  version "2.5.2lr"
  sha256 "8aee9e3ef8e67c34608b9aaa079cb2f52c9c2a9fffc10f90b551f24be62f9b3f"

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
