# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta443"
  sha256 "003f829690a9a190cebb52d60ba7bfcc679641a25137103c2cae73553668602d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.443/Minga_0.1.0-dev.443.dmg"
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
