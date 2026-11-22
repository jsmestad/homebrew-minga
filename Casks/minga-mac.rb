# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta164"
  sha256 "d506b01c69a86cbfde29390a2513221b668401f1b53fd268338aa7bf29fa62f9"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.164/Minga_0.1.0-dev.164.dmg"
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
