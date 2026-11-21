# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta125"
  sha256 "04a0a6bcb608afbb53771c647bbf4987e74eb58513d7f1e3536c6989b18fb8c6"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.125/Minga_0.1.0-dev.125.dmg"
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
