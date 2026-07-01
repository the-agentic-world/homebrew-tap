class Megara < Formula
  desc "Project and global agent harness installer"
  homepage "https://github.com/the-agentic-world/megara"
  url "https://github.com/the-agentic-world/megara/archive/929fca3d83232d3c90fb482e1947abca5f1400e1.tar.gz"
  version "0.1.0"
  sha256 "c2944ebc6c90c16ba597f706f831d409b8f1ab4850ecea164aa3823f3898a77b"
  license "MIT"
  head "https://github.com/the-agentic-world/megara.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "codex", shell_output("#{bin}/megara targets list")
  end
end
