# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta448"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.448/minga_0.1.0-dev.448_macos_aarch64.tar.gz"
  sha256 "7e1edc5c9f30ae93f54aada4a90f516925e10802b7871421c8778b28ba9668b7"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.448", shell_output("#{bin}/minga --version").strip
  end
end
