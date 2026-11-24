# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta333"
  sha256 "f4c4e8824b8c1f6c0ea39964b57fe24e8b3fc55e072ba4fea1a8e8af2bae2db4"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.333/Minga_0.1.0-dev.333.dmg"
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
