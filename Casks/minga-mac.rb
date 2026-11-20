# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta39"
  sha256 "a78b1ca31dbd3324c903e2ab739d5ad7fa565231a3f838fb6db720e20969d737"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.39/Minga_0.1.0-dev.39.dmg"
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
