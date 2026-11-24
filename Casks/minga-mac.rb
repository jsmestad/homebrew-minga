# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta335"
  sha256 "99edbd03b27811519f700f680ff435534b3c1740ae65c320339979a8f87acd06"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.335/Minga_0.1.0-dev.335.dmg"
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
