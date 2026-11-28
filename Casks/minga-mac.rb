# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta471"
  sha256 "268c5db789a6562846f3ad3ff42adf20945c6a85b3e1bff0e23a64befa04f576"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.471/Minga_0.1.0-dev.471.dmg"
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
