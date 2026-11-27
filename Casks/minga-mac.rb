# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta461"
  sha256 "baa03b62455abe95bb79e0444f451e4212707b51f1f6701beecd77ad31fb128f"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.461/Minga_0.1.0-dev.461.dmg"
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
