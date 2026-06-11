class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.2"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.2/sisyphus-v0.0.2-aarch64-apple-darwin.tar.gz"
    sha256 "40b058e0a11a118e735f771fc4fbcd41cdc36835950e2e260848a5e3597521b8"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.2/sisyphus-v0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc92b0e697570a04999680740aa035daaf9bf9bdbb963ab07994757f5b121279"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
