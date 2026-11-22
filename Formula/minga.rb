# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta144"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.144/minga_0.1.0-dev.144_macos_aarch64.tar.gz"
  sha256 "f6f79efb23e2474e6118e7a7a71e9f4b10c7262393b0331cc50b4905ce88b748"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.144", shell_output("#{bin}/minga --version").strip
  end
end
