class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.5/gcm-v0.8.5-aarch64-apple-darwin.tar.gz"
    sha256 "92c1ba68be6156c1c5a1ee65785267926e5ac05e5d477ee61a3019ca53f04c4d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.5/gcm-v0.8.5-x86_64-apple-darwin.tar.gz"
    sha256 "44f8a1a2fbea91586f98bd5888e96338abeb8d722d92bfeba9347bec37141119"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.5/gcm-v0.8.5-aarch64-unknown-linux-musl.tar.gz"
    sha256 "021f8b1ac1802a35e56e2ae2a29d1bcd20a16a2eb3d1a14bf24049e3e1fa7e08"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.5/gcm-v0.8.5-x86_64-unknown-linux-musl.tar.gz"
    sha256 "66c261066e3594f9e5762d04efffc07f40f5fcebf7e2111216627f05eb8d1ad9"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
