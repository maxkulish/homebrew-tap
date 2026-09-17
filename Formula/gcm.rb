class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.1/gcm-v0.8.1-aarch64-apple-darwin.tar.gz"
    sha256 "8654aba4ee20d787c2b00fb5be64f2906aa3603b2908b44b34e12a53225782c0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.1/gcm-v0.8.1-x86_64-apple-darwin.tar.gz"
    sha256 "d48b9e101c4ed231ae1763ae41937437380119fba3c2b385b58e289d89ddf171"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.1/gcm-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4ad4a22e82b212e6ea5769ed94de170a43065a1d89e64521205893caba70533e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.8.1/gcm-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b5bb8d6c68f037bd6074528000e156ca0186b3e29a4e959351ccb6c4e391b868"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
