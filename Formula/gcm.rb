class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.6/gcm-v0.8.6-aarch64-apple-darwin.tar.gz"
    sha256 "359bb3b30eaf6537feac5e5864d1b991de3d1392dd76b6dcc20b351091ceaafe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.6/gcm-v0.8.6-x86_64-apple-darwin.tar.gz"
    sha256 "afdc8215c0db013d82bc72f3130503e820c605598a0d878f418b728ec851fa2a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.6/gcm-v0.8.6-aarch64-unknown-linux-musl.tar.gz"
    sha256 "8a88035d474948affe477d81c5d63784a265364dae2e73cb6c9c4d1957db2f69"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.6/gcm-v0.8.6-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dc5e3ad5f49d2af82e1bc3e4764c57b98243331e1a7712133a7902bc5e92940a"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
