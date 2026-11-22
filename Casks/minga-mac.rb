# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta169"
  sha256 "fab422921ffbacd00aa00f6829a1c1d9e292119be42d91891b9952e92d7abe75"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.169/Minga_0.1.0-dev.169.dmg"
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
