# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta198"
  sha256 "6d1a2231d8e6c3fa84e292975aa3d3fb59d5f5d8c73449fda41a5d7a4b88c639"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.198/Minga_0.1.0-dev.198.dmg"
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
