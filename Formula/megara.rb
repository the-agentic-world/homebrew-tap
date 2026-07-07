class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  version "1.1.5"
  license "MIT"

  on_macos do
    url "https://github.com/the-agentic-world/megara/releases/download/v1.1.5/megara-v1.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "bf23daefac5032528bab284c70ded1360c12bcbe9a3cbd35426cf11dd568d576"
  end

  def install
    bin.install "megara"
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
