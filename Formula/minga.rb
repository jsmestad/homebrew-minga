# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta47"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.47/minga_0.1.0-dev.47_macos_aarch64.tar.gz"
  sha256 "ee57c4cd36cc7e3213e129c0ed206755b6e817b888819b6d3c60f1c23fa297a0"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.47", shell_output("#{bin}/minga --version").strip
  end
end
