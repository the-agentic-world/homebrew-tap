class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.19"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.19/megara-v1.1.19-aarch64-apple-darwin.tar.gz"
    sha256 "0a27a9151e680503d83aa7cd891931c929f73366b5fcf9c19dcd1a2a5b83ba9e"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
