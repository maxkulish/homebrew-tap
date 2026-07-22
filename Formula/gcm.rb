class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.1/gcm-v0.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "1e970370f4b4ae9ec4ae038fa16670487628cc47fba41b2654f1af828d93db15"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.1/gcm-v0.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "f747a2dedc3802eebc888111d8dcdd2a8535680121c7b95138a2dd99dd563f13"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.1/gcm-v0.5.1-aarch64-unknown-linux-musl.tar.gz"
    sha256 "97e3d1bdca72c1733d051f398edf6e4e6b17cfe7af023726af1c59bac3e85746"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.5.1/gcm-v0.5.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "bdb1d5561907398757a6f36fc2effc04fea00b01ebee0e86ef3b29d824cbba6a"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
