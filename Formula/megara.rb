class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.10"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.10/megara-v1.1.10-aarch64-apple-darwin.tar.gz"
    sha256 "ee8734f453bfefec960c3f0ab1f07c3e26c55568643b8392c767d9f543610713"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
