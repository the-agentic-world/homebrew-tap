class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.4"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.4/sisyphus-v0.0.4-aarch64-apple-darwin.tar.gz"
    sha256 "ca160724f4d04972bcf70930bd6ea89cbf2a3b197f46dfd9e5df739bc88355ec"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.4/sisyphus-v0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "339dd21b67636ee2cb92ea369e277b7bdeef656c314fdc6c71e9157e4e16b5ef"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
