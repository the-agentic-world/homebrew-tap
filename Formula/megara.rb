class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.6"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.6/megara-v1.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "5ebf71b70fb7a7d95d0cc696e5e2f4bf1cabb61d3739729080c0f87f89d98db4"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
