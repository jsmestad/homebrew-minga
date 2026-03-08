cask "minga-mac" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/jsmestad/minga/releases/download/v#{version}/Minga.dmg"
  name "Minga"
  desc "BEAM-powered modal text editor with native macOS GUI"
  homepage "https://github.com/jsmestad/minga"

  app "Minga.app"

  zap trash: [
    "~/Library/Application Support/minga",
    "~/Library/Preferences/com.minga.minga-mac.plist",
    "~/Library/Caches/com.minga.minga-mac",
  ]
end
