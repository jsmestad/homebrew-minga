# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta187"
  sha256 "bf49548561061520ae77ea42b8322ceee16779d050b61a55f3d4099ed397f47b"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.187/Minga_0.1.0-dev.187.dmg"
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
