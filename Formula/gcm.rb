class Gcm < Formula
  desc "AI git commit tool: turns working-tree changes into a signed conventional commit"
  homepage "https://github.com/maxkulish/gcm"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.1/gcm-v0.7.1-aarch64-apple-darwin.tar.gz"
    sha256 "8c0479d533dfca518fcd2a3aa5d3c21c168383361125a974a6f194dda6513333"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.1/gcm-v0.7.1-x86_64-apple-darwin.tar.gz"
    sha256 "469b76dcc6661cfb5af053016a9bccb0fec18c025010da2060c544656b39f675"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.1/gcm-v0.7.1-aarch64-unknown-linux-musl.tar.gz"
    sha256 "b2a5bd4c4b68300506d510ce7f0d07be88ff054afc18953a16f721a3ff78a3df"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/gcm/releases/download/v0.7.1/gcm-v0.7.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "81bc657d18ffe53dd58727ffb00fed7e3001b070a69f4ce35a9da0ac9459ba19"
  end

  def install
    bin.install "gcm"
  end

  test do
    system "#{bin}/gcm", "--version"
  end
end
