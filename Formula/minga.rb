# typed: false
# frozen_string_literal: true

# Minga TUI editor - installed from pre-built Burrito binaries
class Minga < Formula
  desc "BEAM-powered modal text editor with Zig terminal renderer"
  homepage "https://github.com/jsmestad/minga"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jsmestad/minga/releases/download/v#{version}/minga_macos_aarch64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/jsmestad/minga/releases/download/v#{version}/minga_macos_x86_64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jsmestad/minga/releases/download/v#{version}/minga_linux_aarch64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/jsmestad/minga/releases/download/v#{version}/minga_linux_x86_64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir["minga_*"].first
    bin.install binary => "minga"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minga --version")
  end
end
