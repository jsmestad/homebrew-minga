# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta54"
  sha256 "91f6cc562e028ee319f670900d5f895ceb68a8423cdaacce0b54abc3544a0791"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.54/Minga_0.1.0-dev.54.dmg"
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
