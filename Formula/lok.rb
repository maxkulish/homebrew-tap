class Lok < Formula
  desc "Declarative multi-LLM orchestration across Claude, Codex, Gemini and Ollama"
  homepage "https://github.com/maxkulish/lok"
  version "20261107.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.0/lok-v20261107.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "2965398d4f26bf4c54cf9a28068513640587c46029c4cd77796d16b485c1daf8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.0/lok-v20261107.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "015b9e38b9bfdd6578a3805f48c09adba555ee72a8dde1c8dd3c3bcc62fcbe1e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.0/lok-v20261107.0.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3fa17d69e1c44a4ed9dbd8634a03c5535d74b0a44b5d3d8ecf26b516cd0dcaa5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maxkulish/lok/releases/download/v20261107.0.0/lok-v20261107.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9b084ccdea19ab7fb9786a4ff8cd6d661a665ca70f828543d092fb08cb1128ab"
  end

  def install
    bin.install "lok", "lokomotiv"
  end

  test do
    system bin/"lok", "--version"
  end
end
