class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.23.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "e8856490986cbe4fbc1f4d10dbf8c67e45605ba2b2ec59502d5ae085759a8586"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "28ebbeab18fce95918405dc73192ef6854b18bd5a363615e42241d8cf5b850a9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cfa47876f6f2e8f410e1c69db37e90ea38beeb2b3d95b1d60fd3543212ae78f8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.23.2/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0611fe01a6464d8024bce411b1ddf0e47790524ce99a1fac55a286049876161f"
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
