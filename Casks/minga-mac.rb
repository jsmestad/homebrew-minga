# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta329"
  sha256 "3b5ff9982de70613ee4e78464da87278b561370b29530cda4b1f5dfb8ffdac67"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.329/Minga_0.1.0-dev.329.dmg"
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
