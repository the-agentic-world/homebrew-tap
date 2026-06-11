class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.5"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.5/sisyphus-v0.0.5-aarch64-apple-darwin.tar.gz"
    sha256 "f0b8119a6bd9a0207c89bd2c2716e693c8ae5eb02853b24ddbd76a21241abd60"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.5/sisyphus-v0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7128e9e2ad1336da0d0a130c4681b3bc9cd988820985ed0217cafb1b0eabf370"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
