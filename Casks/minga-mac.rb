# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta222"
  sha256 "ea17c4dbde35c4d940053383cc4e29c23a65a0ba85adb36e6b345366d9b198a8"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.222/Minga_0.1.0-dev.222.dmg"
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
