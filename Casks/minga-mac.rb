# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta206"
  sha256 "b5a52c5530bc61f0a7dad2e68e1c72f6a299730c832eeb799044e9d9eb09ee52"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.206/Minga_0.1.0-dev.206.dmg"
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
