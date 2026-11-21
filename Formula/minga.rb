# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta126"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.126/minga_0.1.0-dev.126_macos_aarch64.tar.gz"
  sha256 "4fac82e1b99fd210e72b2ec7a41bc4af6a765226a6af1aab9c71b38ef2efb799"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.126", shell_output("#{bin}/minga --version").strip
  end
end
