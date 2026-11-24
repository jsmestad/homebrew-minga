# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta329"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.329/minga_0.1.0-dev.329_macos_aarch64.tar.gz"
  sha256 "b605b1c274d9dda3be3ba1ef09eec61d1c2911c092eadbe58ff36c378ee326b6"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.329", shell_output("#{bin}/minga --version").strip
  end
end
