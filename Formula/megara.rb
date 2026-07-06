class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.11"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.11/megara-v1.0.11-aarch64-apple-darwin.tar.gz"
    sha256 "cfa67fbf91f98d1aa0876a4029c55977ac944f61f14643264d13f3fe0e8eda9a"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
