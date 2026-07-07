class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.4/megara-v1.1.4-aarch64-apple-darwin.tar.gz"
    sha256 "70b58699ba35f2cd441366325e4076a49e3cded4f16fb83a3a750eda8a53124f"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
