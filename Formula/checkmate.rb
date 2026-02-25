class Checkmate < Formula
  desc "Task management TUI"
  homepage "https://github.com/next-press/auroro"
  version "0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/next-press/auroro/releases/download/checkmate-v0.1.0/checkmate-0.1.0-darwin-arm64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/next-press/auroro/releases/download/checkmate-v0.1.0/checkmate-0.1.0-darwin-amd64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/next-press/auroro/releases/download/checkmate-v0.1.0/checkmate-0.1.0-linux-amd64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    libexec.install "checkmate"
    libexec.install "lib"
    chmod 0755, libexec/"checkmate"
    bin.install_symlink libexec/"checkmate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/checkmate --version")
  end
end
