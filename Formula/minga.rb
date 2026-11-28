# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta474"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.474/minga_0.1.0-dev.474_macos_aarch64.tar.gz"
  sha256 "b5bc1a87da98630bd7b93dc487a626ae77f339bb998c42a294dbba92b3c7ac07"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.474", shell_output("#{bin}/minga --version").strip
  end
end
