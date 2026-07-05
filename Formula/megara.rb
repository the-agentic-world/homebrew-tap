class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.10"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.0.10/megara-v1.0.10-aarch64-apple-darwin.tar.gz"
    sha256 "f0ac64152f019f446f3fd7a33e41298927d55f46f84254cf128feb2d25675e3c"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
