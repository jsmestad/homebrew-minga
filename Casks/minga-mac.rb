# frozen_string_literal: true

cask "minga-mac" do
  version "0.1.0beta49"
  sha256 "26389d39a847a7bec05552e869b5d198fc7fe10de00e8a810aa7951a828cafdb"

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.49/Minga_0.1.0-dev.49.dmg"
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
