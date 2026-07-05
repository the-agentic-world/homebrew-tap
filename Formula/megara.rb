class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.9"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.9/megara-v1.0.9-aarch64-apple-darwin.tar.gz"
    sha256 "de7bf540acc518795b51aaf94bdfef0d6fa2c8e8d0097c52645e9a9ebf36c617"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
