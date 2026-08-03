cask "nodeterm" do
  version "0.2.34"

  on_arm do
    sha256 "eed84ab2faa1e5f9e7c742e066b35173f2edd24aa6f4c616f3515d8beb378e1a"
    url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "a2d1229a3761cfff259bbde0e880c0ad87c2c2c415d4be9d1451b0447d10d243"
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
