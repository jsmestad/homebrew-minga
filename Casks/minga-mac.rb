# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta47"
  sha256 "86c787dced0207c192fd18e479b7d7c654b656cbaa7100d712bd68188ee83156"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.47/Minga_0.1.0-dev.47.dmg"
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
