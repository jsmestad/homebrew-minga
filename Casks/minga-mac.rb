# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta45"
  sha256 "f3b5d7d0802a25430b150239678af60e60c16174ab96641fcc826a09865f8fc3"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.45/Minga_0.1.0-dev.45.dmg"
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
