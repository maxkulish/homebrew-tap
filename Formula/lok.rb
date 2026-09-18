class Lok < Formula
  desc "Declarative multi-LLM orchestration across Claude, Codex, Gemini and Ollama"
  homepage "https://github.com/maxkulish/lok"
  version "20260913.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20260913.0.0/lok-v20260913.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "b59ab738e1918de11579e5f7158107c6451cdaefac2abdeabc1228b6f101d448"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20260913.0.0/lok-v20260913.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "abcf7d4d03f008bac092522e3858b4c2269f868f937cacf1ec0691df7e685475"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20260913.0.0/lok-v20260913.0.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "05c07268d23bf1c1cfaab3b4135c2036a9ae63cc5cdb2f5f9e61189b2bca023f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20260913.0.0/lok-v20260913.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "37f11af166362cfddbb4efd1b79a922d026429be7a863bc94f4ceb573165a896"
  end

  def install
    bin.install "lok", "lokomotiv"
  end

  test do
    system bin/"lok", "--version"
  end
end
