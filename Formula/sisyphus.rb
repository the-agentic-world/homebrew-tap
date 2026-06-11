class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.13"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.13/sisyphus-v0.0.13-aarch64-apple-darwin.tar.gz"
    sha256 "5b67f847089e9125d566cbf189fb6c534949b904fc747eebca18334dbed02a4a"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.13/sisyphus-v0.0.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b92a33d7285e6d76a25b6e486723be2028658ea43dfc3961e940bc1ecaba951d"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
