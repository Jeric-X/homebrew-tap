cask "syncclipboard" do
  version "3.3.1"

  on_intel do
    sha256 "07f4472ea1926aa92d2035d94cb69f3a5fd25117e90ff8ccc2d727a7ba3783f8"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.1/SyncClipboard_macos_x64.dmg"
  end

  on_arm do
    sha256 "5dbc6c14061604b5e0aa32c46ec1932753a08e95821119f2e88f3361ac86b689"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.1/SyncClipboard_macos_arm64.dmg"
  end

  name "SyncClipboard"
  desc "Cross-platform clipboard synchronization tool with clipboard history"
  homepage "https://github.com/Jeric-X/SyncClipboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :monterey

  app "SyncClipboard.app"

  zap trash: [
    "#{Dir.home}/.config/SyncClipboard",
    "#{Dir.home}/Library/Preferences/xyz.jericx.desktop.syncclipboard.plist",
    "#{Dir.home}/Library/Saved Application State/xyz.jericx.desktop.syncclipboard.savedState",
  ]
end
