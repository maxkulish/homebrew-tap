class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.0/gcm-v0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "da441f59123ecc374dca7644823c974ba5721c095c6e5a69785069b6ee242756"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.0/gcm-v0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "cd843a17d3011d38ae8e390087d10f302d3d5f059ee1a1fe5b2a31759c104ef6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.0/gcm-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
    sha256 "f99b6c30d21037710a0c2ed2d68d59da2bc22d1844167e75cb485b57868a4868"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.0/gcm-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e113e6ca94ab4177b1a8cd16fa6c1697d8ad8d1a5178c8697bca100dd68c4a1e"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
