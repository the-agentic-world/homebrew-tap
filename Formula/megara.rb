class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.3.0/megara-v1.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "9c8ebca602d755abd338f2aa86cceb34c706c920423665b4211961f75094d108"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
