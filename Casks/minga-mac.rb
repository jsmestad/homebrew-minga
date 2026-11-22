# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta181"
  sha256 "1c52ca443b0e8099b02801dfb233b9a01acfe682871197de3194c863e7e6d55d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.181/Minga_0.1.0-dev.181.dmg"
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
