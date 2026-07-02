class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.3"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.3/megara-v1.0.3-aarch64-apple-darwin.tar.gz"
    sha256 "a445792b3cb2fcfa5a942bad0a6d4c38dccadb31ba2bd003e18db6668d67e5d7"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
