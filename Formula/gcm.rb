class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.6.0/gcm-v0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "2543b606795486e853f3f8144420aec8ad6852e34a8a3d6b7ed9cebb41e8ddbc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.6.0/gcm-v0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "50967d2e9b315560c847302ea17cb197bf782d35d01dfe6b0caf87bae16f0717"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.6.0/gcm-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4a4cc416072ad2aa0d3713e7a9daa440bf62705398178a89e226825f60b64505"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.6.0/gcm-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3c2a09e36a5a8a9407f12e9f15446b13750e4716f777df12fc00d1f5d9713767"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
