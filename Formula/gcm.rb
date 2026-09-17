class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.0/gcm-v0.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "f07d19b5ebc9290d93101ef87a43a5977eb9c831765deef61433156337de9105"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.0/gcm-v0.8.0-x86_64-apple-darwin.tar.gz"
    sha256 "01bd67697574c9c49fc154b6781edc711ed6b044b348e9dca531ee10760c4588"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.0/gcm-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "31bd061f3cca6fb1daea0a824fbaafdb8a50b1c481029a0c51336e9cf7d7d34b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.0/gcm-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ab3c75a2aff1985cf47c531545affc36097094ae09073a01ad29d7bf36d08403"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
