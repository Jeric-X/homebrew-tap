cask "syncclipboard" do
  version "3.3.2"

  on_intel do
    sha256 "9abfcd6aa7359dcd4bee6a8ef52f022666c1d6be6a281bfdf536fee7273ec722"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.2/SyncClipboard_macos_x64.dmg"
  end

  on_arm do
    sha256 "6f4f150578e14c2e7c5967eca0fb08df8540c7a5d44958ac321d25650ef4d7a6"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.2/SyncClipboard_macos_arm64.dmg"
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
