# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta207"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.207/minga_0.1.0-dev.207_macos_aarch64.tar.gz"
  sha256 "736e43b9f1bdc8b67aef1d3c81a4f5dcaed2892b225fffc14d099da77f7d08f4"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.207", shell_output("#{bin}/minga --version").strip
  end
end
