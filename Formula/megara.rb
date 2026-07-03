class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.7"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.7/megara-v1.0.7-aarch64-apple-darwin.tar.gz"
    sha256 "24030b7daa7569c96965a4aa588b52669ee024f53bad238a0874f58a373f95fa"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
