cask "syncclipboard" do
  version "3.3.0"

  on_intel do
    sha256 "46c183b440cb1447025aabce9362cf65404fc002d32e8ddc3a371cbe292f9cca"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.0/SyncClipboard_macos_x64.dmg"
  end

  on_arm do
    sha256 "204c766d1ccb9386431016f09542f78e50f96c2a2d62649b5f248aa7f0c2a2cc"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.0/SyncClipboard_macos_arm64.dmg"
  end

  name "SyncClipboard"
  desc "Cross-platform clipboard synchronization tool with clipboard history"
  homepage "https://github.com/Jeric-X/SyncClipboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :monterey"

  app "SyncClipboard.app"

  zap trash: [
    "#{Dir.home}/.config/SyncClipboard",
    "#{Dir.home}/Library/Preferences/xyz.jericx.desktop.syncclipboard.plist",
    "#{Dir.home}/Library/Saved Application State/xyz.jericx.desktop.syncclipboard.savedState",
  ]
end
