class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/the-agentic-world/megara/releases/download/v1.0.2/megara-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "bf9db6f171c72b7d7e3c0ebcc823fe26a0e4f6fddf81863c4cbdd9163e43eb91"
    else
      url "https://github.com/the-agentic-world/megara/releases/download/v1.0.2/megara-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "952e3ad4402e042571584a4690259921c04b26cfa14751893548159e27720a58"
    end
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
