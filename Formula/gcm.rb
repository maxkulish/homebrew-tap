class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.8/gcm-v0.8.8-aarch64-apple-darwin.tar.gz"
    sha256 "e97779ebecee9cee9229b3d66dc9eef1021605845d4fb5727ff532b6b7e36dba"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.8/gcm-v0.8.8-x86_64-apple-darwin.tar.gz"
    sha256 "c1c854f82d09c61ad7f4f030bfb9481c023fba85d59b2ed382fbc32fd3de8a69"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.8/gcm-v0.8.8-aarch64-unknown-linux-musl.tar.gz"
    sha256 "3a29561beff5deb948291208c7f771c163f492ba59bfea1132ceaa9fd905ad57"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.8/gcm-v0.8.8-x86_64-unknown-linux-musl.tar.gz"
    sha256 "26d86214fc0e549560de01de7b5776f3e546d5a17bc030648f9781979f112ee2"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
