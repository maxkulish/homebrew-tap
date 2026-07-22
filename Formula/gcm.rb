class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.2/gcm-v0.5.2-aarch64-apple-darwin.tar.gz"
    sha256 "0bbabcf4f02772a5075b8eaa1266d274b038b385071c80c52687a1793172bcf5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.2/gcm-v0.5.2-x86_64-apple-darwin.tar.gz"
    sha256 "5be3d8e9951b9f41cc287f9529575048ad2c0878450e7fabee9959276b35f4b2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.2/gcm-v0.5.2-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1f75e278fb99180e7d33f4de4a6bf70df7dbb5ad8806c3a60f49af0de525edb1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.2/gcm-v0.5.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "040f6cc51570969a61615aad91f9b65e1692cb209510defe2aac048e88fa630e"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
