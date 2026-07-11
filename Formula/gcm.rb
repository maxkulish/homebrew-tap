class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.0/gcm-v0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "1bd88826d7af97ca55f337b74c53eb77f814bead795d40b4dc3192ff0c793a0e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.0/gcm-v0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "93e0476dabcf1ffc9b12a7b805b3a40f2962fb762179c90503a346b497f8e098"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.0/gcm-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "c8301ec9415ac79057a2b7dfb862840cd40ea3de008b138c55cc3c80c3dd2b4c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.4.0/gcm-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "89089e7e7a22983775e764e0d19fed12a11036ec0eab4e70bcac2d089e98d634"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
