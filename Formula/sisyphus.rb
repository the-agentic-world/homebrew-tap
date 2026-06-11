class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.7"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.7/sisyphus-v0.0.7-aarch64-apple-darwin.tar.gz"
    sha256 "ba216bab153bb495e9a29cdf4ebccbdd98e4a0a342a7c84dbde134b2e707d4d0"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.7/sisyphus-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9e48eb545364e8de17940060c4602cd01351214ce3625ebb125f89a42d41861"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
