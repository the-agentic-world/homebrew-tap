class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.0/megara-v1.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "d03181c9e3316a2b8f854e3095434574fb29ee04a44c4ef9c639ff10a91f8f91"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
