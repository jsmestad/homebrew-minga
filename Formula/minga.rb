# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta199"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.199/minga_0.1.0-dev.199_macos_aarch64.tar.gz"
  sha256 "7dce3f3ad534339131a525c0eae9e782f12889d4e52f61bbfd8044f68df84f11"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.199", shell_output("#{bin}/minga --version").strip
  end
end
