class Rtk < Formula
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"
  homepage "https://www.rtk-ai.app"
  version "0.30.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.30.0/rtk-aarch64-apple-darwin.tar.gz"
    sha256 "ec0acb446a945ecad61b5d22edaef3fc2ef2fbf893f907418819c3fc89e72b22"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.30.0/rtk-x86_64-apple-darwin.tar.gz"
    sha256 "0def406c967a95175625db8f9cde13bf1811171240aac937d0c9dd364586c342"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/rtk/releases/download/v0.30.0/rtk-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1c1b245da57685cc7db22c91b5c582e08d2933940dd22e8a606768da5eb7b909"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/rtk/releases/download/v0.30.0/rtk-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5db06285d12f50447939bf5df96e67ef5b9ac24ce5a54321eaab7872e5723f0e"
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
