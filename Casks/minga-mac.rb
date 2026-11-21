# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta126"
  sha256 "2825b251f52846eb186384b5b911414ca444de914b5d85097d8a50ed6304a6e1"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.126/Minga_0.1.0-dev.126.dmg"
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
