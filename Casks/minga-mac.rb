# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta441"
  sha256 "419f657ad9b2845b4a013a385b92690e0a37ffe34dd0b40608b6ff4bcc9bbbae"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.441/Minga_0.1.0-dev.441.dmg"
  name "Minga"
  desc "BEAM-powered modal text editor with native macOS GUI"
  homepage "https://github.com/jsmestad/minga"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Minga.app"

  zap trash: [
    "~/Library/Application Support/minga",
    "~/Library/Preferences/com.minga.minga-mac.plist",
    "~/Library/Caches/com.minga.minga-mac",
  ]
end
