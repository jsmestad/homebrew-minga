# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta151"
  sha256 "51b3a1dc269c5d052a6b23b45d8cf17be47fd14e61506a2d0db74e9a86be325c"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.151/Minga_0.1.0-dev.151.dmg"
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
