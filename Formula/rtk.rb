class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.28.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.28.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "9582ec70a098111e8f82d1b0e9d88e657bb5859354a6510976adff27ad3cbe67"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.28.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "cc13e0a58de91145eb06add33e9ccef98e8d863c218710bf988671ead6ae32bb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.28.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "01c12369398a6330b366532201a33aab3ae7f318736308c57e7db550eb990254"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.28.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0b74404636cfd68a4435ca2b866c0cb87273104dfba3f89d23d024e607990adc"
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
