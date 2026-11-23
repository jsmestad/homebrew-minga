# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta239"
  sha256 "743f62858739e4ddc973f4459239eb6eba26591209ea77a5f8fdc25400e8ec4d"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.239/Minga_0.1.0-dev.239.dmg"
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
