class Lok < Formula
  desc "Declarative multi-LLM orchestration across Claude, Codex, Gemini and Ollama"
  homepage "https://github.com/maxkulish/lok"
  version "20261107.0.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.2/lok-v20261107.0.2-aarch64-apple-darwin.tar.gz"
    sha256 "1d3735b7340e4f136188c6f80a3e7e77c27b53d5883cceb787191d879edc9aca"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.2/lok-v20261107.0.2-x86_64-apple-darwin.tar.gz"
    sha256 "612fecd1e3a607d713b26ac7ea5b921ed60951dbca472167b22dfb7ceb816a1c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.2/lok-v20261107.0.2-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e8c25cedab7fd54d91e79c4085d26c28a3246b64995e5920c449a910d63c44cd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.2/lok-v20261107.0.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aa2bdebf35a266cc32d124f02218d148c6a0e1dd9f649a117f17394c895541e6"
  end

  def install
    bin.install "lok", "lokomotiv"
  end

  test do
    system bin/"lok", "--version"
  end
end
