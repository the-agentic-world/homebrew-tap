class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.13"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.13/megara-v1.0.13-aarch64-apple-darwin.tar.gz"
    sha256 "b4ed7494dbf70dfeb80d010e8817302784988e7ea293bde7229386ee925f8ed6"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
