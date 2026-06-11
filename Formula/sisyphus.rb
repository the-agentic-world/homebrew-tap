class Sisyphus < Formula
  desc "Local issue-to-agent broker and lifecycle controller"
  homepage "https://github.com/the-agentic-world/sisyphus"
  version "0.0.10"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.10/sisyphus-v0.0.10-aarch64-apple-darwin.tar.gz"
    sha256 "9a8c3ba95890723ac90cbd4b81c70c67e8e365b222af35109b3486460d882ae5"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/the-agentic-world/sisyphus/releases/download/v0.0.10/sisyphus-v0.0.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91d093347c4d9baf7c72c0e097baffdd9246cd463ba7b21258c021baf1cd3dde"
    end
  end

  def install
    bin.install "sisyphus"
  end

  test do
    assert_match "sisyphus", shell_output("#{bin}/sisyphus --help")
  end
end
