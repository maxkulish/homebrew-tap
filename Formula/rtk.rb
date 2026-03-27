class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.25.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.1/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "6ed74275935b2908a3613e536b9a953a467768ce2a42575d4ce721762e5c0b9c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.1/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "6bd1e377dd8d9279febabc8e14fd096f33bff21e8dbcb24eb15f9e312e0b2feb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "64e2ce2a0d1195600bcbb6897aebde977b27d274544e3550e41553d56d6aecae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.1/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8837b42235aff6a08b406835fc46db1f7eab82b87e9abe4297baea994390ff08"
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
