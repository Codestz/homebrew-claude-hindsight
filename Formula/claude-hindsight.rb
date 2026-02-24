class ClaudeHindsight < Formula
  desc "20/20 hindsight for your Claude Code sessions"
  homepage "https://github.com/Codestz/claude-hindsight"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-apple-darwin.tar.gz"
      sha256 "5f27cc1f1bcc8a7d10ac2267e8fdd8c16ee71d550fb7881632477befaa6d9310"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-apple-darwin.tar.gz"
      sha256 "0ccd9ebf06c894fac5413cd8791938d6e2e887f84c6ae6a4fa70a3e1bbc3f511"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d043fe05ef53174355c1beb06f0c491412bf9a9277ffebf0997592d892c6d2b7"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3894ce09d218aae02e816533fbaf967f53609ef2ea705454f0047655837dcdf"
    end
  end

  def install
    bin.install "claude-hindsight"
  end

  test do
    system "#{bin}/claude-hindsight", "--version"
  end
end
