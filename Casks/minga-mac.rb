# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta33"
  sha256 "8897421289a44557bc06d44cbbbbb66dfc14332e9ffc92fc072ba9e8a13f4744"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.33/Minga_0.1.0-dev.33.dmg"
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
