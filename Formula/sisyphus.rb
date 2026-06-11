class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.11"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.11/sisyphus-v0.0.11-aarch64-apple-darwin.tar.gz"
    sha256 "38b13fbf5d3a314cdae359837fdfb224060358383009e13df31e68fcf7c17a37"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.11/sisyphus-v0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fdf8f12f6e4058640820b80a6eb6b689b527f46a5ce605b2414831252d290f3"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
