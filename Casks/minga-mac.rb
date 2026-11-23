# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta199"
  sha256 "870fff64a02896df19925c42312d59ab7adcfb6b62d4c0207ac4d95dfc606af4"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.199/Minga_0.1.0-dev.199.dmg"
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
