cask "nodeterm" do
  version "0.4.2"

  on_arm do
    sha256 "6ed1936b9c11475504d329fb0fba38c91d844c37d0346b18aa2b0ae6c7ffd7f5"
    url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "48f2221e7626c15f46d20fc22e7f5c9daa1219e24f2cba01e2c1689cd108ea5d"
    url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}.dmg"
  end

  name "nodeterm"
  desc "Node-based terminal manager — terminals and coding agents on an infinite canvas"
  homepage "https://nodeterm.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app self-updates via electron-updater; brew should not force-reinstall over it.
  auto_updates true

  app "nodeterm.app"

  zap trash: [
    "~/Library/Application Support/node-terminal",
    "~/Library/Preferences/com.nodeterm.app.plist",
    "~/Library/Saved Application State/com.nodeterm.app.savedState",
  ]
end
