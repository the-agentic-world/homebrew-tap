class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.3.2"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.3.2/megara-v1.3.2-aarch64-apple-darwin.tar.gz"
    sha256 "c8ccd01cc581e1008def9bd10565d519c157cb3f105da73a7286929b52497ff6"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
