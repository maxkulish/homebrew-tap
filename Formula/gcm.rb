class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.2/gcm-v0.8.2-aarch64-apple-darwin.tar.gz"
    sha256 "6668fb057f5b59692e9676a3e9973eba7f96c41a50a176ff45cfcabd5415b471"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.2/gcm-v0.8.2-x86_64-apple-darwin.tar.gz"
    sha256 "25739c1f45f6096219e17cc288305261a64f687fcd6a3db649ca9c03b0f5a663"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.2/gcm-v0.8.2-aarch64-unknown-linux-musl.tar.gz"
    sha256 "ef528877bf30a5b2daff22a443ad9a5cd6c47ec626ef008262fa280f069bd8b2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.2/gcm-v0.8.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "cf4eff6b50d9beec88e8f438e6ac5364b137d537ee4894f22d28958b4e266a4b"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
