# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta174"
  sha256 "45d8718cee86ff84cdf785fda34c4f864120a728508e8dce14e93848c38d522d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.174/Minga_0.1.0-dev.174.dmg"
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
