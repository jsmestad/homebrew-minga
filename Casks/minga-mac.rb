# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta457"
  sha256 "dce549b6f07b3944fe9b162445e090859e6c8305df9ce9f85d5f127c533fd39d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.457/Minga_0.1.0-dev.457.dmg"
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
