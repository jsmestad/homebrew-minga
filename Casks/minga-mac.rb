# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta474"
  sha256 "34baa89f7eeaa3333314d361b06c9bb411a5e3d59248aff80186d21643fa074d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.474/Minga_0.1.0-dev.474.dmg"
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
