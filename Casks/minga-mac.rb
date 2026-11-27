# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta464"
  sha256 "3a7226a4e1524f2c61b3878f903c482d64fd30593a08430cb843bc4dc07b9335"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.464/Minga_0.1.0-dev.464.dmg"
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
