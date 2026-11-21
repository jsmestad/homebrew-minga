# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta60"
  sha256 "68c512a197cf0ce8da50e717e895afe27fb06598105f6d9cec737540a3746b28"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.60/Minga_0.1.0-dev.60.dmg"
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
