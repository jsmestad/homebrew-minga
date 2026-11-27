# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta459"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.459/minga_0.1.0-dev.459_macos_aarch64.tar.gz"
  sha256 "7bcf90f1b36ae7710e67175b91b224b6ef1b70be86b09bf8800eeb61f533b3ac"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.459", shell_output("#{bin}/minga --version").strip
  end
end
