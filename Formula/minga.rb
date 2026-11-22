# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta166"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.166/minga_0.1.0-dev.166_macos_aarch64.tar.gz"
  sha256 "c166aa1a35595cf8b383492ac989edcfb8988458302ebe9c6f9aeda112bfdbb2"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.166", shell_output("#{bin}/minga --version").strip
  end
end
