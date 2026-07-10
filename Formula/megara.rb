class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.14"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.14/megara-v1.1.14-aarch64-apple-darwin.tar.gz"
    sha256 "6bb88e8808cc3db354ade699f6725c6ff9a072f52a69f95514b1faef9aa36d00"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
