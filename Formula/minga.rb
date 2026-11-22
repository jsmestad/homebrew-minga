# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta156"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.156/minga_0.1.0-dev.156_macos_aarch64.tar.gz"
  sha256 "8c49b8b89364248ac2f5a50110400b1e42c4d4258e31bf079fb063a3632e0788"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.156", shell_output("#{bin}/minga --version").strip
  end
end
