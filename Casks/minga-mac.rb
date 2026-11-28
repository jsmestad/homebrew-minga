# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta477"
  sha256 "08e97862e650d1f6c82856cef6503c17b8c4b42acf46d71b33122fb1e327817c"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.477/Minga_0.1.0-dev.477.dmg"
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
