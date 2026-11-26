# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta457"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.457/minga_0.1.0-dev.457_macos_aarch64.tar.gz"
  sha256 "c133d70e9b3aa6a05a6aa4f71ed18ad4e8c176c766e0b7e5ddfd5cd06fb52dbb"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.457", shell_output("#{bin}/minga --version").strip
  end
end
