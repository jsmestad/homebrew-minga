# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta442"
  sha256 "6722e847135516bf408c64e3fda03bfb0a0b43b289bf91605aad0a5b94cf1802"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.442/Minga_0.1.0-dev.442.dmg"
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
