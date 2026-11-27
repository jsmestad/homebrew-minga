# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta458"
  sha256 "84a7ceadc97c9c66b319f94ee5dd15c963663c6de4c9ba473bd0aecac28db2ca"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.458/Minga_0.1.0-dev.458.dmg"
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
