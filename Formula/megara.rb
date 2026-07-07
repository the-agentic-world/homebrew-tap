class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.8"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.8/megara-v1.1.8-aarch64-apple-darwin.tar.gz"
    sha256 "b26af3c36c6256cefce85d383549aa1bc4b7aaefbdf388d0397b8a3228ef8f35"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
