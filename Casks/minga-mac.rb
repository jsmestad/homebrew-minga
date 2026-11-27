# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta465"
  sha256 "beab40eb11355bec2ab7fc371322cb67df00ba76c8fcc6531a49ddeb8771553e"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.465/Minga_0.1.0-dev.465.dmg"
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
