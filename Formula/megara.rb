class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.3.1/megara-v1.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "5cfd72557536db784cb1c44d832c12c9f47521377428b3e6d4dc0ecd506ae76c"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
