# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta465"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.465/minga_0.1.0-dev.465_macos_aarch64.tar.gz"
  sha256 "a6f23933b809798072ffa0652f2c37c9861042d44c8bc6cb477e9bb99950bd70"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.465", shell_output("#{bin}/minga --version").strip
  end
end
