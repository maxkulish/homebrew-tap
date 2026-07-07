class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.2.0/gcm-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "e63303d03db313c799ce0ef6cb6ce7d28f47c1cf32c4f6830d78174781ea52c7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.2.0/gcm-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "767c26ab958d4e51add055d1173a3870da45b833fbafab4f9d6521a9c2b1c796"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.2.0/gcm-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "50564bbe04b1d7b9473d6d0064a78daeed05857459a94105bfcace41f446fc62"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.2.0/gcm-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f0e3af54d2e6feb6a2c95d9f0a3f3217f10c50272d7495d08cb61a667ec99c8a"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
