class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.1"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.1/sisyphus-v0.0.1-aarch64-apple-darwin.tar.gz"
    sha256 "def7f02166f82f2c884501a8184ccba12ff59d8688e02dbf7c53bef6161a525b"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.1/sisyphus-v0.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d65b59c5c9c6236e14ade043d65c9446e4e2ebeb3cd537f1b727d9cb6eb6c72"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
