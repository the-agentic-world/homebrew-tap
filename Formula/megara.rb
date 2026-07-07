class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.1/megara-v1.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "22adf5a50ce03bd8cd17e342bb22d3e0f7f67ec6d37bd9f76107b7e0405109c9"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
