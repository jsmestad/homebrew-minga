# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta213"
  sha256 "e4119169d359d770f0bca7a84820e2cc19ec01aa7187022b7fec0e80653e7321"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.213/Minga_0.1.0-dev.213.dmg"
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
