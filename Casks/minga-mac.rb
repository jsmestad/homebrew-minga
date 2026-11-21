# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta53"
  sha256 "2ec4b3b2f260e506fc2569266d8c5775bc0ae9217b22e3394756a018592cc0f2"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.53/Minga_0.1.0-dev.53.dmg"
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
