# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta159"
  sha256 "6db717af5da979262f09e4493f09dce30ca4d0189587a52524a0e2b383453946"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.159/Minga_0.1.0-dev.159.dmg"
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
