class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.12"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.12/megara-v1.0.12-aarch64-apple-darwin.tar.gz"
    sha256 "40e2c9af463f5d5ac008ad17e2688221e714dfde0909a022b4499c9d7b5a66fd"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
