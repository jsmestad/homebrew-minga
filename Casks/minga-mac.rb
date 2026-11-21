# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta72"
  sha256 "bc1941c07036855a19ea9fe933df2b27ef5644932bdae51b75c3195d3c6b7bd7"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.72/Minga_0.1.0-dev.72.dmg"
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
