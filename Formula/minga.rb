# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta376"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.376/minga_0.1.0-dev.376_macos_aarch64.tar.gz"
  sha256 "169e2ced92c856c94358b5760b4d40f3114e9b7ce417e6ea248f84ab5f3f4c13"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.376", shell_output("#{bin}/minga --version").strip
  end
end
