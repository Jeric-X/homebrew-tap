cask "syncclipboard" do
  version "3.3.3"

  on_intel do
    sha256 "4212d2e9f9e0eb6717eb7c8da05e14a0c77ea8f3466df8b65ef2965d53d431f3"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.3/SyncClipboard_macos_x64.dmg"
  end

  on_arm do
    sha256 "be20dd03baecd5e03eefaf67a3307c8f5f5542243e78a985cae8815e80bd0b31"

    url "https://github.com/Jeric-X/SyncClipboard/releases/download/v3.3.3/SyncClipboard_macos_arm64.dmg"
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
