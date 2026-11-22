# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta159"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.159/minga_0.1.0-dev.159_macos_aarch64.tar.gz"
  sha256 "53b851d5df65d5c17fc90a39a35378f1ac9a22ba0da9c4b610bf40d48e29dc41"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.159", shell_output("#{bin}/minga --version").strip
  end
end
