# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta38"
  sha256 "b4efc82ffed2aeba484ce9c4c1873a3971958a2512b8ba4166bd3db99f4b7709"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.38/Minga_0.1.0-dev.38.dmg"
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
