cask "nodeterm" do
  version "0.2.29"

  on_arm do
    sha256 "66c05d1f8d27459908aa15907a17b5a4b1e01a88c2b68dfc0bac74ab078f3e19"
    url "https://github.com/eneskirca/nodeterm/releases/download/v#{version}/nodeterm-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "a9b1cdb583b80dda1c759ac8783574eb57afb9c708d49f9b30ce897e346e0715"
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
