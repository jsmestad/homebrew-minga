# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta192"
  sha256 "a065e18bbe2192126f18c3174d615fc86a2bc735ebc931b769685f01d64a2be0"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.192/Minga_0.1.0-dev.192.dmg"
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
