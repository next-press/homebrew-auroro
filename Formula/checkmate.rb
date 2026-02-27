require_relative "../lib/private_strategy"

class Checkmate < Formula
  desc "Task management TUI"
  homepage "https://github.com/next-press/auroro"
  version "0.1.2"
  license "MIT"

  depends_on arch: :arm64
  preserve_rpath

  url "https://github.com/next-press/auroro/releases/download/checkmate-v0.1.2/checkmate-0.1.2-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "fe010d4a04aa939439e99e85622e82334fa21bae89378e9b67eea912ad562864"

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
