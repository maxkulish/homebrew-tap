class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.3/gcm-v0.8.3-aarch64-apple-darwin.tar.gz"
    sha256 "d8a002492deedd9f504bee554c6d7871f4454c9fd91ee9249237b547c33cd82e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.3/gcm-v0.8.3-x86_64-apple-darwin.tar.gz"
    sha256 "6a287e40f5f7e88d7f681fb555c3c2faf614ea3df7f183b4fedd52dc7cb99bb3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.3/gcm-v0.8.3-aarch64-unknown-linux-musl.tar.gz"
    sha256 "9a2510e2ef1eeb4b87b2281c37a105f73df0e6a4252908d6c16b81c300ac5db8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.3/gcm-v0.8.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3c2e6364148be5d3627603c8a1296926febfd73a7c0946f38093172a5de2d24a"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
