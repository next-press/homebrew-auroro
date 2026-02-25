class Checkmate < Formula
  desc "Task management TUI"
  homepage "https://github.com/next-press/auroro"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/next-press/auroro/releases/download/checkmate-v0.1.0/checkmate-0.1.0-darwin-arm64.tar.gz"
  sha256 "6f3275c4d43c739089fa898c8f212edf3579fe01916b4bd7c5ad0172fac31118"

  def install
    libexec.install "checkmate"
    libexec.install "lib"
    chmod 0755, libexec/"checkmate"
    bin.install_symlink libexec/"checkmate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/checkmate info 2>&1")
  end
end
