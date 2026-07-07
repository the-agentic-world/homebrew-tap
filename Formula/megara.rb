class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.12"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.12/megara-v1.1.12-aarch64-apple-darwin.tar.gz"
    sha256 "9ff2c69552827d9e657d039e2a0a00cccc86da1d5069342a8f5d3df1b48b5c9d"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
