# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta459"
  sha256 "d636bad18beb3de02e464a25ce40c30079579375a30026e1aa34b2e374bebfa9"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.459/Minga_0.1.0-dev.459.dmg"
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
