class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.3"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.3/sisyphus-v0.0.3-aarch64-apple-darwin.tar.gz"
    sha256 "216a67f9702e80f63b0487fec241ca839915b93cedcf1bdfa2b4c826865c9161"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.3/sisyphus-v0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49010c8a6732741d18be1ceb53548aa8ab32f1882e9d0276ce38772effd33e9f"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
