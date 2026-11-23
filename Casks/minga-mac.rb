# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta258"
  sha256 "a0f415a050476bebd9a25d5b20f88b066c2a29ad51ed1d06de6ab61a2ae8dd2d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.258/Minga_0.1.0-dev.258.dmg"
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
