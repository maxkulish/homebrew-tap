class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.1/gcm-v0.4.1-aarch64-apple-darwin.tar.gz"
    sha256 "5d5f0335bc32b6e70217cf069840ff883d27eff8228ca78afcbfe73790cc11c1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.1/gcm-v0.4.1-x86_64-apple-darwin.tar.gz"
    sha256 "a4569d3f0ce0b14668e73d67052ad344dafd837ec46cfaf2bbd94c40ea1d2cb3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.1/gcm-v0.4.1-aarch64-unknown-linux-musl.tar.gz"
    sha256 "cccfb067d670250d788780b58613eb97ee889fb57ad76402837e59bff745ef5e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.1/gcm-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "209055f09fa55dd89553ea66034cb175927703cf6eab4530ef5efec69887e76f"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
