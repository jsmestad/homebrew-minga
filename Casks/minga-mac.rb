# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta56"
  sha256 "0cfe1f232be4a1d42f8ea3435a6ba2c811f565c028c304cd80253cff2abb28f0"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.56/Minga_0.1.0-dev.56.dmg"
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
