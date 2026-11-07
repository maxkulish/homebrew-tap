class Lok < Formula
  desc "Declarative multi-LLM orchestration across Claude, Codex, Gemini and Ollama"
  homepage "https://github.com/maxkulish/lok"
  version "20261107.0.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.1/lok-v20261107.0.1-aarch64-apple-darwin.tar.gz"
    sha256 "2b3add5ad23cd591547e02ee275723b45c94601a7d31457ba8a271e64354faad"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.1/lok-v20261107.0.1-x86_64-apple-darwin.tar.gz"
    sha256 "2a143acbb19f82f5ce4fb968e67b04dd0992f463263dad569806e2800f6da976"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.1/lok-v20261107.0.1-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "62c135fc5cb43ddc92a58c5d7aab5bc30c42f8e15c929b8cc27521a675e2d51b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.1/lok-v20261107.0.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a9248fa8638fa656f06e2edc1bdf1f1c682e012db4daad0192ec73bf43020db7"
  end

  def install
    bin.install "lok", "lokomotiv"
  end

  test do
    system bin/"lok", "--version"
  end
end
