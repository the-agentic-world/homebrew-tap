class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.8"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.8/sisyphus-v0.0.8-aarch64-apple-darwin.tar.gz"
    sha256 "dbcc31451a2f06d3b93a5e82119ee4b16f4312f8578a09b736f34d11a5dc3c7b"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.8/sisyphus-v0.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "860038ed929d28b28e66453981e74b67ab7f4ab19ab984db9f404b9b891a96c4"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
