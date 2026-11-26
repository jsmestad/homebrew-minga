# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta448"
  sha256 "9617892cd797a2dd591e5efa5600fd5ef28e5a05cf451ac557c7f26206e9105d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.448/Minga_0.1.0-dev.448.dmg"
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
