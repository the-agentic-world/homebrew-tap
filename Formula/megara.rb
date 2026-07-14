class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.17"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.17/megara-v1.1.17-aarch64-apple-darwin.tar.gz"
    sha256 "2e7948b13fbbf5ff1e843dac6589e834ca8c5dea99faa0ef2ae846a68f0bfc3f"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
