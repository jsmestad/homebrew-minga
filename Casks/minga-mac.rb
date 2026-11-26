# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta452"
  sha256 "0b854adc99b28f1dc9e1fdb21199f6b44cdc1bb000b9270293cfab9adf72f1c0"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.452/Minga_0.1.0-dev.452.dmg"
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
