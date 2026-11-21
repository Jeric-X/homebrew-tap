cask "syncclipboard" do
  version "3.3.4"

  on_intel do
    sha256 "b1d240f8e9b88d9738b4e0d2f5456c44ede9bf5c1b135703775ece2d121764d4"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.4/SyncClipboard_macos_x64.dmg"
  end

  on_arm do
    sha256 "bc8cc0a1b3402aa45f333e4bca7e9244061b3760991b7b0e5bd086efd462fa59"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.4/SyncClipboard_macos_arm64.dmg"
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
