# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta451"
  sha256 "c2e911833985ddd99760408a990d024035006643babdc677337b1bceaa933556"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.451/Minga_0.1.0-dev.451.dmg"
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
