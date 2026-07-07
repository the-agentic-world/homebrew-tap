class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.9"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.9/megara-v1.1.9-aarch64-apple-darwin.tar.gz"
    sha256 "2327b00fd7123d1717f4170ae8e7458b9c4ffd469c175a0bbba80f05f1d27e64"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
