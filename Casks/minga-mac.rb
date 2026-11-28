# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta480"
  sha256 "07eaedbb1f9ee9155acb72c22511eab7431e1d832b9e6092e22510c3455c37f9"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.480/Minga_0.1.0-dev.480.dmg"
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
