class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.12"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.12/sisyphus-v0.0.12-aarch64-apple-darwin.tar.gz"
    sha256 "001f959f64ad2404856761563cdb846bd172530fdda4942587b87f0968c5b129"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.12/sisyphus-v0.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b18b9a8aa3081595240e0fd0ca28f29fe7f00b8ae83448897b5d8dca94828c93"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
