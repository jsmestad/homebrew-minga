# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta144"
  sha256 "42ebca6aef285f4d7edfbf39fcd5b2e582e8abd78f0f354b333729c957000f07"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.144/Minga_0.1.0-dev.144.dmg"
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
