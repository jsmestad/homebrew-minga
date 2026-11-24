# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta335"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.335/minga_0.1.0-dev.335_macos_aarch64.tar.gz"
  sha256 "787e1f838705d03e7830929c2ed45bb0b1ce3e85bf1d12bd4c162eef71e4db89"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.335", shell_output("#{bin}/minga --version").strip
  end
end
