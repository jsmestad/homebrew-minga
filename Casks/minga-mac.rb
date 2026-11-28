# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta473"
  sha256 "c01972d0aafb745a14a6391cfa2128dc5e0e4e628a609f8e2d12e352b6c23dcc"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.473/Minga_0.1.0-dev.473.dmg"
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
