# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta156"
  sha256 "f21e4660452c2f7e127e40abe795f092421054b9fa3a738e254e60ba2b9ab631"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.156/Minga_0.1.0-dev.156.dmg"
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
