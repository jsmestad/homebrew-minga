# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta261"
  sha256 "650a52ea428ac83cd08944eaefd39a6ac558fb4e86bf069c12f00115d21f829d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.261/Minga_0.1.0-dev.261.dmg"
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
