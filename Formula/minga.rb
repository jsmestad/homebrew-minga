# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta458"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.458/minga_0.1.0-dev.458_macos_aarch64.tar.gz"
  sha256 "7af588628276d1acc783273d13e17a157a2e3243e1cee0d0d4bb55ffcc0eda02"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.458", shell_output("#{bin}/minga --version").strip
  end
end
