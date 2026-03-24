class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.25.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "0afa12ce147f3e95487ef01ebc13ca3f16e01fe711d9f144ddde3b3f8ddbe39a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "b310f5dd230f5a47f6f5140d6063c67690dbcfa03102bc29288b498d456b3822"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1ae8dc12971e116f06bcaabd5aab0479cca802f19ea83458e831d68051320629"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.25.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ca60bc894ab791af63eb41fb62f63aadc25a32d5695624830224c90dbab27412"
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
