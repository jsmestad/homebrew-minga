# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta468"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.468/minga_0.1.0-dev.468_macos_aarch64.tar.gz"
  sha256 "d927678fbeef1826e2e9c82bf055064ec312cf77b6a07a7d4ce5daca7e4eeac0"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.468", shell_output("#{bin}/minga --version").strip
  end
end
