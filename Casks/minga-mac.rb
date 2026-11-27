# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta468"
  sha256 "29a563e87c7bc083f311c9837215f011605dbb0602876134b05c99fccd61f422"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.468/Minga_0.1.0-dev.468.dmg"
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
