# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta169"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.169/minga_0.1.0-dev.169_macos_aarch64.tar.gz"
  sha256 "4302f92ad7edd63e3df57ea2d3457f40230fdbd6fb961531f0b8abd2005b4b81"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.169", shell_output("#{bin}/minga --version").strip
  end
end
