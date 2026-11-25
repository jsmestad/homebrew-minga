# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta422"
  sha256 "aaf52e4a559c176b2ecb9701aedba7ada29383de231845899b4015b91469fb4c"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.422/Minga_0.1.0-dev.422.dmg"
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
