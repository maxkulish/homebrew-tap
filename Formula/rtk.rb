class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.27.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.27.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "4ab0d740f0299a0a27d491e38fa76f52a61bd0cd2b9759193a5e2a74ac244224"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.27.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "c4b681f9bcb884ccc8bfd46d682df509b15b1e8b7f735e4276af3aa9ac9944b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.27.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0bca828c54d2ad1fc6d5fcab758977417b6486c1ad4f1e1e82e76e20e087f78a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.27.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "32b5fe697dd4efbede330aafa44094ac0b68b4d5c0be9b316de8cd8858b95221"
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
