class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.0/gcm-v0.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "72bf31f5c7031f266cd831704a9e647047317524cd06d923ce5eadfc53cd04d2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.0/gcm-v0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "2e2bcc80b021ec0d523fe3819c83b6564efb1e4d740fae806dce1c3c0f74e218"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.0/gcm-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "448b4bd47f210d49b1c60a38bed61e2714f4d121ead7023f308d011e8a84535b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.0/gcm-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7d75ec0a0781068ad663c81da0b875232b8b45d1fbc1a3acdb4998d99443de7a"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
