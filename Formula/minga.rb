# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta50"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.50/minga_0.1.0-dev.50_macos_aarch64.tar.gz"
  sha256 "256b72d21dd271ced2fd54b1a89a48b52c12758bec08b5e8a351fb9accc7971e"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.50", shell_output("#{bin}/minga --version").strip
  end
end
