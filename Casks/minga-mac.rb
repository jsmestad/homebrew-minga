# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta469"
  sha256 "c83ffd8fa018b99485f4d5e4d1ca01c8215b759614068ad4a75a292aa7749693"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.469/Minga_0.1.0-dev.469.dmg"
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
