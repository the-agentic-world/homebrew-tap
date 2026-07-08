class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.13"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.13/megara-v1.1.13-aarch64-apple-darwin.tar.gz"
    sha256 "b12d253217a2a2a1592b3de82a80fb2a8478c02b717406ed0562dabe96981f3f"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
