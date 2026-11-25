# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta445"
  sha256 "dd06186cbb6ec88f2522bf4a9b6b8cbe7718e6f61d800a6d06e905e25ed9500e"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.445/Minga_0.1.0-dev.445.dmg"
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
