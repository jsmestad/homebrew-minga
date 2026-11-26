# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta453"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.453/minga_0.1.0-dev.453_macos_aarch64.tar.gz"
  sha256 "bddb41f9436ca6ce736fbb46e8b3e4d2367cb0de79b867ce24fd682f826051c2"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.453", shell_output("#{bin}/minga --version").strip
  end
end
