# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta51"
  sha256 "3d0caefc8f1840289abbfeb788b854a6c2d1f01028dc189e46d92cba64df430f"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.51/Minga_0.1.0-dev.51.dmg"
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
