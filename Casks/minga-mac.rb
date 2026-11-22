# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta179"
  sha256 "5c96239a26e614130ba28c519952b9e083d48894cfa80f40b4102ea923be2ee0"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.179/Minga_0.1.0-dev.179.dmg"
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
