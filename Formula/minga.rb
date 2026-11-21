# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta51"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.51/minga_0.1.0-dev.51_macos_aarch64.tar.gz"
  sha256 "d3cf5d6affe8fc7af78c2af0f34beb91401e9f3a55051348ff38d51487267e63"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.51", shell_output("#{bin}/minga --version").strip
  end
end
