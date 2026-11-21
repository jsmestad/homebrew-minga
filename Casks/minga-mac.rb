# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta50"
  sha256 "0f60eeec2750b4867dcd946437dad111fb4eb78b7e84ae69ac64324f3a592d93"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.50/Minga_0.1.0-dev.50.dmg"
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
