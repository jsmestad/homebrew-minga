# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta49"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.49/minga_0.1.0-dev.49_macos_aarch64.tar.gz"
  sha256 "e1aabfb4592b8b9341dae1d45b0e5f0b8f553794f351cfb740f2261f47cf7abc"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.49", shell_output("#{bin}/minga --version").strip
  end
end
