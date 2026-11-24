# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta268"
  sha256 "a482c6cc34818af76bf3c571fb375b222753088825bd0f7cf25b1484543964df"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.268/Minga_0.1.0-dev.268.dmg"
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
