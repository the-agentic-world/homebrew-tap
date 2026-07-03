class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.5"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.5/megara-v1.0.5-aarch64-apple-darwin.tar.gz"
    sha256 "723375df8cf0aebf31c2b19d883c398021ced97c0eda602082b40ef07f1d31c0"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
