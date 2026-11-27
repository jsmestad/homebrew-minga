# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta467"
  sha256 "dcd738bfdea6320a4e7d0cc1a993fa4275793fc3a8fab0523138345d706b3399"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.467/Minga_0.1.0-dev.467.dmg"
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
