class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.29.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.29.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "9fa2fab94fab485f1b222db6f365a0bc8ee4d2a9c1fce0fe710f9c538d5e6767"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.29.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "3a1717248262799233bba3c0d73d673e1de13560fa593fd430becfa5e1f4bde4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.29.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e7de0a49fd0dd256f413daa3406cf8cd8a4ccceaff397671d6dcc1b226b0c4ab"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.29.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "85b78f53024c64d5dfa8bf8b83044ec43f68205d43c99aef4b8c93fb3a833056"
  end

  def install
    bin.install "rtk"
  end

  def caveats
    <<~EOS
      rtk is installed! Get started:

        # Initialize for Claude Code
        rtk init -g          # Global hook-first setup (recommended)
        rtk init             # Add to ./CLAUDE.md (this project only)

        # See all commands
        rtk --help

        # Measure your token savings
        rtk gain

      Full documentation: https://www.rtk-ai.app
    EOS
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
