class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.4"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.4/megara-v1.0.4-aarch64-apple-darwin.tar.gz"
    sha256 "92f5f42f80d65977e64d8013f6416681696c32ae918a9aa28312a1d6865952a1"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
