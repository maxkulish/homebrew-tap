class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.26.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "b0e62708336736a5e5d81e089db3bd779966b26b20841ccf0bd8944a705255fe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "b9a0a9a4957066d46a62772cbd6e82abc816ab690f3396c8ed9f0e3760864a59"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e681f48807693f794083862adfc41be03090212ff3838a3e23e361434147d2e9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9683024b12f2f61314a0630c191e0de9149de8f0bc2d815419858015b62ee38f"
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
