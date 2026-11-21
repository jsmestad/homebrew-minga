# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta98"
  sha256 "fac94c3ee1d001015d6231e643adafc4b4428968a80452286e0842a43ddcc783"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.98/Minga_0.1.0-dev.98.dmg"
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
