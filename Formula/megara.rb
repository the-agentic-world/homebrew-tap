class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.18"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.18/megara-v1.1.18-aarch64-apple-darwin.tar.gz"
    sha256 "039e3099c26e1b44c363bb88f2706dcdc15497bec494e7a85baaaa015e929ac2"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
