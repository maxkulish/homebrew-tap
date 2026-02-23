class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.23.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "c6765c104a7423836f8b2d3ae38f43ad1af57c666040ba7f7c272c7e33aeb8c7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "d98e852f773d7851df5b224b8e132d67319a79a777c97c1a2e794657f474a5b6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "13db27a11524d969aff18285a91ef686249906ba56c688267c7850def71ffe96"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87067782d65f2f715461de3caa58a9f283a6e40dbd0f0df7c67cdf3809b478de"
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
