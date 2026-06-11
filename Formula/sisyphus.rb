class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.6"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.6/sisyphus-v0.0.6-aarch64-apple-darwin.tar.gz"
    sha256 "f9540e19c2180cef7d5bdfbe3b339c446bc9edef131e203c5c6d82db447ab35d"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.6/sisyphus-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88e1d2bc672fbdf1cee16720b1fa3ced62a6a4e5edb369c3322b57810eb892d2"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
