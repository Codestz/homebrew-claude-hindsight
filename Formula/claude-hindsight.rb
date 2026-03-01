class ClaudeHindsight < Formula
  desc "20/20 hindsight for your Claude Code sessions"
  homepage "https://github.com/Codestz/claude-hindsight"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-apple-darwin.tar.gz"
      sha256 "7e288fc2240ed87a0bef45d0bc923f93373aecf331404dbabe1c39aa20d7ec03"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-apple-darwin.tar.gz"
      sha256 "7f00ab956871638a4efee38b821c8f499330730f3052785af62f764147360604"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b35bff4b55ffd703b9f039c09eaf02cda45b53eaecbb52c5b6ccb8c9066b0217"
    else
      url "https://github.com/Codestz/claude-hindsight/releases/download/v#{version}/claude-hindsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67d4fcc2eae35478031a4ae8d0bc3b052300c62ae41eada74b98b616219d2f4b"
    end
  end

  def install
    bin.install "claude-hindsight"
  end

  test do
    system "#{bin}/claude-hindsight", "--version"
  end
end
