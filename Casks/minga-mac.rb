# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta204"
  sha256 "8c280fbe31d03c20e67a9245d0f58d965edbbc2169ba0bad3e414b673af263ac"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.204/Minga_0.1.0-dev.204.dmg"
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
