class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.15"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.15/megara-v1.1.15-aarch64-apple-darwin.tar.gz"
    sha256 "20a3dfcb58e1be808318b18e5af6aafc3312b1445e83517c0ab0b006bb1f975b"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
