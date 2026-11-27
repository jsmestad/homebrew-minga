# frozen_string_literal: true

class Minga < Formula
  desc "BEAM-powered modal text editor for the terminal"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0beta461"
  license "MIT"

  depends_on macos: :sequoia

  depends_on ArchRequirement => :arm64

  url "https://github.com/jsmestad/minga/releases/download/v0.1.0-dev.461/minga_0.1.0-dev.461_macos_aarch64.tar.gz"
  sha256 "f3db2f1f0118c1942a41bf86dd1fd072191e4b5b5f172a8780b7f3a5a09d66da"

  def install
    # Homebrew stages inside the archive's single minga/ directory.
    libexec.install Dir.children(".")
    bin.install_symlink libexec/"launchers/minga"
  end

  test do
    assert_equal "minga 0.1.0-dev.461", shell_output("#{bin}/minga --version").strip
  end
end
