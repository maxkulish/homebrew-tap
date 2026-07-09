class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.0/gcm-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "decb2ecdfe7997c2f4bf8b2571c4eebdeb5756f24f91858be9b2a69340a8b1f5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.0/gcm-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "74c97e585d458ced65c5bcbbae178a9b8946d25dd640a0a7f6570e3a90173f46"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.0/gcm-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "98d5e047866665d90fed6a7dd87766d41ea6cfcd80d1c0d8f4cfbb8851e852d9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.0/gcm-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2ac8646527e0dc216bd1184c804c5f48349182af951f30ede43d32ac3893b416"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
