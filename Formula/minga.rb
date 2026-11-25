# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta443"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.443/minga_0.1.0-dev.443_macos_aarch64.tar.gz"
  sha256 "3c14b0f49c6c4c30baa2c3476d1c8c7a31dd4adbab798095f7714b5857e73de4"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.443", shell_output("#{bin}/minga --version").strip
  end
end
