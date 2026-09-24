cask "fl2601" do
  version "1.2.1"
  sha256 "7c9430595aa8641642f4c42b131348c2f3636fbd68517c07a452362d15bcd8b3"

  url "https://github.com/sevmorris/FL2601/releases/download/v#{version}/FL2601-Cipher-Tool-#{version}.dmg"
  name "FL2601 Cipher Tool"
  desc "Passphrase text encryption using PBKDF2 and AES-256-GCM"
  homepage "https://sevmorris.github.io/FL2601/"

  # Retired 2026-09-23 with its Windows port: no further releases, and both
  # repositories are archived. The cask stays so an existing install is told,
  # and it still installs the last build: FL2601 must go on decrypting what it
  # encrypted, as must its web version, which stays up at the homepage.
  deprecate! date: "2026-09-23", because: "is retired and gets no further releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "FL2601 Cipher Tool.app"

  # The app itself writes nothing to disk. These are macOS's own, and the
  # saved-state directory is what makes a resized window persist.
  zap trash: [
    "~/Library/Preferences/io.github.sevmorris.FL2601.plist",
    "~/Library/Saved Application State/io.github.sevmorris.FL2601.savedState",
  ]
end
