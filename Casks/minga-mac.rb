# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta453"
  sha256 "7118dad6d1303bf961bb43a2d4390c2504163099880c3572bbd75d65154a523a"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.453/Minga_0.1.0-dev.453.dmg"
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
