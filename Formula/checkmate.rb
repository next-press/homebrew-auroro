require_relative "../lib/private_strategy"

class Checkmate < Formula
  desc "Task management TUI"
  homepage "https://github.com/next-press/auroro"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64

  url "https://github.com/next-press/auroro/releases/download/checkmate-v0.1.0/checkmate-0.1.0-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "b0c93ffdc0853092462df117805b04b8916e1ada73dcdcfee45fac5e27aef929"

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
