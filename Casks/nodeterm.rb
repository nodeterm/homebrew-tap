cask "nodeterm" do
  version "0.3.5"

  on_arm do
    sha256 "720d084be46eeab279033b92bd29a22ab3221a50ad68efe736e2e2b65325525f"
    url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "b5f575766bb8f0892b5bf0232d956092331e5adf344c5d2e7543c9339fe64e5a"
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
