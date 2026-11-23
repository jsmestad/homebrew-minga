# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta207"
  sha256 "700f7df702685c69451349c93043f777404a08604c36d8a1cdeccef357ab4670"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.207/Minga_0.1.0-dev.207.dmg"
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
