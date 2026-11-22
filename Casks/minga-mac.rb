# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta182"
  sha256 "5eaad295aa70d27766922a003abafe09c78985918821559cbc24568deabe8971"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.182/Minga_0.1.0-dev.182.dmg"
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
