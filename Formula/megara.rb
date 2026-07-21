class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.2.0/megara-v1.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "4ee721214be13dc2eb9696e2d7408a6e88c0214840e328557dd4a5a66d8dd6c4"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
