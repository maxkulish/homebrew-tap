class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.7/gcm-v0.8.7-aarch64-apple-darwin.tar.gz"
    sha256 "39c754d697d844d00018f9ac72dcec9d3d7172bf271cb2cc4f9a133bcb714481"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.7/gcm-v0.8.7-x86_64-apple-darwin.tar.gz"
    sha256 "ed668c4724c028f54f9eb49e752f6ca1ffacc38ef1bfb6d98d4c17e87b4e0ce6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.7/gcm-v0.8.7-aarch64-unknown-linux-musl.tar.gz"
    sha256 "39f16687fd66778dbb84b8a2924ba6f8fd91c1e280f88acd1956c87a26fb7427"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.7/gcm-v0.8.7-x86_64-unknown-linux-musl.tar.gz"
    sha256 "30e12139ce131eeb522f3a65439038d4be72ec41b6e7fa508655cf69c65ad9b8"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
