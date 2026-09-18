class Lok < Formula
  desc "Declarative multi-LLM orchestration across Claude, Codex, Gemini and Ollama"
  homepage "https://github.com/maxkulish/lok"
  version "20260915.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20260915.0.0/lok-v20260915.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "c5bcdb5fabd240f7c065df2b8830cae846bc88ea3cb4f64fd6d02d3aca2488d3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20260915.0.0/lok-v20260915.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "07cab38381adc00cb9dafa0afdd11b10d95a0d14a8f94a6bbefb8ae5e90b7dc6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20260915.0.0/lok-v20260915.0.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "9bf90b7dcc3331dbdae08ca3d163192b75ff7661fed5c8f20441275d0edabe0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20260915.0.0/lok-v20260915.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d71b270e110be6ec879374d7060b01df1f43229cf00ab7fa51fe1f1b0565dbbe"
  end

  def install
    bin.install "lok", "lokomotiv"
  end

  test do
    system bin/"lok", "--version"
  end
end
