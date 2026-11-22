# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta166"
  sha256 "42c639750632a88ceb6398e851b16ad7df485ac59151ef6ea4813d3bfc71a4ba"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.166/Minga_0.1.0-dev.166.dmg"
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
