class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.11"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.11/megara-v1.1.11-aarch64-apple-darwin.tar.gz"
    sha256 "5cce1eadd2d737020baf634fdb300e9b1995c17f84cda251f882c6ceec5cda58"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
