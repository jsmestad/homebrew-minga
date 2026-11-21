# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta137"
  sha256 "6c121471f84b66f399357223589944d81d377a5996ad78e7a4018cc5c6fe445d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.137/Minga_0.1.0-dev.137.dmg"
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
