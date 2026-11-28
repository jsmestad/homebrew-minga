# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta478"
  sha256 "31f8fd7688dfe34718e22fc0001e1acace2b1696ce4bddb4d15f1a3bce59f804"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.478/Minga_0.1.0-dev.478.dmg"
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
