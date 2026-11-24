# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta376"
  sha256 "9030371bd26c0c473379a77bd602e657f987d1331989fe620aebcafc02cc5af2"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.376/Minga_0.1.0-dev.376.dmg"
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
