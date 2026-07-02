class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/the-agentic-world/megara/releases/download/v1.0.1/megara-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "9b4d236597a19d5a201d55aec060280599d38ed74fc40855485de73c1909de6e"
    else
      url "https://github.com/the-agentic-world/megara/releases/download/v1.0.1/megara-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "2b8bca87b46ede4d7f2f5d7830ff53dae14d81e0f0d670aa6f89d235adee784b"
    end
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
