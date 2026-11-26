# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta447"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.447/minga_0.1.0-dev.447_macos_aarch64.tar.gz"
  sha256 "b212a830def935c2ab2782ec33ab05e23a2adc0af9555dfca5fa9378c44210fb"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.447", shell_output("#{bin}/minga --version").strip
  end
end
