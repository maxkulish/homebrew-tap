class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.26.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "5dbbc251099a436b9e430eb4a0ac270806e5abf430d8180a508d3975784dd20d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "b79edb3d18881b8e6e9850a3325b073d9854ca326bf3585433e04acaa192118a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d850663ae986842e96103996a2213f3abad0e5d69dda213bea9dd0e6685e59f5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.26.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "578513eefd31fb56042975641452a0c11f9b49bea3a47cae119db6fa2757948f"
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
