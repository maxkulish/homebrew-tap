class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.1/gcm-v0.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "8f2fab997752efa117b1ceb37c1305fa46e1d42fda9bfd4445d9c45b9342e303"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.1/gcm-v0.3.1-x86_64-apple-darwin.tar.gz"
    sha256 "e38d1d0509027d57f0e417cb73fbc02b833be7e2602aff5c07504e708e29f462"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.1/gcm-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
    sha256 "8f45bc4e8a8148a382d2c30d68479e2b4903e2d48ae14ca2b8402a56741e4acd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.3.1/gcm-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "172c839865b8037f4d8380eb7ccd2b1939bda0efe09095006a224a11aa86b476"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
