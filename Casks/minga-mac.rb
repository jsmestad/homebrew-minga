# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta280"
  sha256 "b09594e12e831b05fcdc13af226286bd042e2d638e46774644d0c4f091ea05db"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.280/Minga_0.1.0-dev.280.dmg"
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
