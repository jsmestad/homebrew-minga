# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta157"
  sha256 "7bd3360b9799c89bf9d273aefa48da29f606441b18289c9915b00655457babb0"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.157/Minga_0.1.0-dev.157.dmg"
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
