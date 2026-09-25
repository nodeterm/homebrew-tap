cask "nodeterm" do
  version "0.3.15"

  on_arm do
    sha256 "137fd2ec601444c4d7db3d8790c2bd2de587dc7372462b4564b2698f2b9d642a"
    url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "35308bfee4a4a21c7bf635abe2e914f02c06dbb7904ad09fef9b45a1e0d252e1"
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
