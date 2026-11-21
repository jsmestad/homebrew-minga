# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta137"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.137/minga_0.1.0-dev.137_macos_aarch64.tar.gz"
  sha256 "42eb5ad667e299c92eb7abb5b133343d72905d4bbbbf61b6eac0921cf555f4c8"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.137", shell_output("#{bin}/minga --version").strip
  end
end
