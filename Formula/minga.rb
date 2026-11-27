# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta464"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.464/minga_0.1.0-dev.464_macos_aarch64.tar.gz"
  sha256 "1a17a21ccf2b139d1cb352574207ddcd35c7fc2c5476e8ffd34989ffc91f551d"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.464", shell_output("#{bin}/minga --version").strip
  end
end
