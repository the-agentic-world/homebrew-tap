class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/the-agentic-world/megara/releases/download/v1.0.0/megara-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d71f471aa5409d70d0981f44422d7ec39ccf7bace11258bba060a3319c46681"
    else
      url "https://github.com/the-agentic-world/megara/releases/download/v1.0.0/megara-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "50c835f4bd2bddd9b4c2b74995d8b4d0e5869adfd426b5c1a3dd82d1bbbc6d5b"
    end
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
