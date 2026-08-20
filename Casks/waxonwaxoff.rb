cask "waxonwaxoff" do
  version "2.10.0"
  sha256 "23cb5de305c57a58cea87059cfd2c78766a610a0688601027721eca03466c41b"

  url "https://github.com/sevmorris/WaxOnWaxOff/releases/download/v#{version}/WaxOnWaxOff-v#{version}.dmg",
      verified: "github.com/sevmorris/WaxOnWaxOff/"
  name "WaxOn/WaxOff"
  desc "Podcast audio prep: raw recording conditioning and delivery normalization"
  homepage "https://sevmorris.github.io/WaxOnWaxOff/"

  # Both are real constraints, not caution. The app ships a single-architecture
  # arm64 binary and bundles an arm64-only FFmpeg, and its deployment target is
  # 14.0. Without these the cask installs cleanly on an Intel or Ventura Mac and
  # produces an app that cannot launch.
  # `macos:` is a floor, not an exact match — casks parse it with a ">="
  # comparator by default, so this reads "Sonoma or later".
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "WaxOnWaxOff.app"

  # Every persisted setting, preset and last-used mode lives in UserDefaults, so
  # the prefs plist covers all app state — there is no Application Support
  # directory. HTTPStorages is URLSession's, created by the update check against
  # api.github.com; the other two casks here have no equivalent because neither
  # app makes network calls.
  zap trash: [
    "~/Library/Caches/io.github.sevmorris.WaxOnWaxOff",
    "~/Library/HTTPStorages/io.github.sevmorris.WaxOnWaxOff",
    "~/Library/Preferences/io.github.sevmorris.WaxOnWaxOff.plist",
    "~/Library/Saved Application State/io.github.sevmorris.WaxOnWaxOff.savedState",
  ]
end
