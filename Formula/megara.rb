class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.16"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.16/megara-v1.1.16-aarch64-apple-darwin.tar.gz"
    sha256 "eb2c1a3272007fd853beeb880bc7aa73c621a6272cecf737cf2d93ff450ce97f"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
