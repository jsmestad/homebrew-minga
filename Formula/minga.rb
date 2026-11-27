# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta467"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.467/minga_0.1.0-dev.467_macos_aarch64.tar.gz"
  sha256 "b1fd3a92799f5f5bbaff5b958f3d326974c14fdd2e2af6d077378aa9bfa38fdd"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.467", shell_output("#{bin}/minga --version").strip
  end
end
