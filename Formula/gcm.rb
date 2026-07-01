class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  version "0.1.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.1.8/gcm-v0.1.8-aarch64-apple-darwin.tar.gz"
    sha256 "e15603233d428000f4a4f2991ec72d7324797e89c5ce66fe8ff25ac2b0f2d414"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.1.8/gcm-v0.1.8-x86_64-apple-darwin.tar.gz"
    sha256 "71db60e5b6c3e4eeb3a206493e01cf7197c61d8ae61c3ccc750c19e4539cc486"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.1.8/gcm-v0.1.8-aarch64-unknown-linux-musl.tar.gz"
    sha256 "a2a15b62969d57058762a2bbf719ee6caf7dba1a21a62a5e0bb5a9dce474825e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.1.8/gcm-v0.1.8-x86_64-unknown-linux-musl.tar.gz"
    sha256 "93c2f48338866b5b36ee643cf45fcd8014d30d2e440192e1889f2e976f7105eb"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
