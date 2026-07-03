class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.8"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.8/megara-v1.0.8-aarch64-apple-darwin.tar.gz"
    sha256 "e90d84077f07804cf952218c308615726434382ad766cd16843552c6b9f37ff6"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
