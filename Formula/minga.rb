# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta187"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.187/minga_0.1.0-dev.187_macos_aarch64.tar.gz"
  sha256 "85a0f5ffeb0bdc8710211f4dd1e4f7011d3dfc56ccffb49b1d3b9243e733138b"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.187", shell_output("#{bin}/minga --version").strip
  end
end
