# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta447"
  sha256 "64f868ad2b9f3bf70fd3fb0f4ba6e54996d479a6a27f94b97b76bf76890238e7"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.447/Minga_0.1.0-dev.447.dmg"
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
