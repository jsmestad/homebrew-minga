# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta220"
  sha256 "e2058927ede4ab9b107472213352b6983f02143893608372c6a331e85feb51ec"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.220/Minga_0.1.0-dev.220.dmg"
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
