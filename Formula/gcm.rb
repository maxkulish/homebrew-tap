class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.4/gcm-v0.8.4-aarch64-apple-darwin.tar.gz"
    sha256 "c9c1a5b95dbbe1b25e5b82970ac1b9988d854026035709c89702cecec5822bf0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.4/gcm-v0.8.4-x86_64-apple-darwin.tar.gz"
    sha256 "2215c7ff2ac4380aa28f16ed102404681af16cb6f9184cd59bf4d5743792f50c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.4/gcm-v0.8.4-aarch64-unknown-linux-musl.tar.gz"
    sha256 "8a50e895acf42ea0ead971770de2dc7efd23c19b684b655624f46598ea674885"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.4/gcm-v0.8.4-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6cae2045c12712ae3518449af66afed798b0853d1615942c1e4d5679879ee7bd"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
