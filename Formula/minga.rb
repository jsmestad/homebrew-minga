# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta198"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.198/minga_0.1.0-dev.198_macos_aarch64.tar.gz"
  sha256 "70fa5ab90b03e90c542d7c5a43aa4bab262e98dfcce94bffa056824e3aa5e7cd"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.198", shell_output("#{bin}/minga --version").strip
  end
end
