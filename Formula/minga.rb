# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta477"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.477/minga_0.1.0-dev.477_macos_aarch64.tar.gz"
  sha256 "15c2dce263cc6763cf3c7a8ee46ca8c86ce84d76023183ae08cf338b824ff9a4"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.477", shell_output("#{bin}/minga --version").strip
  end
end
