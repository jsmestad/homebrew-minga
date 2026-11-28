# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta473"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.473/minga_0.1.0-dev.473_macos_aarch64.tar.gz"
  sha256 "cae57d4116f06de396ae897c8259b2a999d5eb5ac4638d92773374f7af29e15e"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.473", shell_output("#{bin}/minga --version").strip
  end
end
