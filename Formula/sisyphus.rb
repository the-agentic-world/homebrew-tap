class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.9"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.9/sisyphus-v0.0.9-aarch64-apple-darwin.tar.gz"
    sha256 "2684cca28b7f9d04abb85da6f6d2ee8465685498b74f0621f23f735abcb0d019"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.9/sisyphus-v0.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b7a706836869036d362ea5117eb1fce090051c1a48d93a4584b724a1bc0d8e8"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
