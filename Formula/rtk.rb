class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.24.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.24.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "e8d97d10a66ee367c020855fa6501e26aeb794cf0e4b666e1747664a125c0395"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.24.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "578add0ed62c54942ab5e5a41f551202d6cbc0a7ec97a100ca824e38a52797d8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.24.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b65e0a4f808aeefc81ca81589a5055b132a0add75006e1deb2f9ffaf0f6d36fd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.24.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f4621dea3635e7235a55fab466f88a05a1d12b6517847903e89d43d50302526e"
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
