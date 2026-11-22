# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta192"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.192/minga_0.1.0-dev.192_macos_aarch64.tar.gz"
  sha256 "23f92263dc4b2be116ce42fb01558902a746f4b2a3d2c4ca27fc739df08a7cf9"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.192", shell_output("#{bin}/minga --version").strip
  end
end
