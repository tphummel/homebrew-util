require "language/node"

class Streak < Formula
  desc "gather streaks from an ordered json array on stdin"
  homepage "https://github.com/tphummel/streak"
  url "https://github.com/tphummel/streak/archive/v1.0.1.tar.gz"
  sha256 "e83c4a93ec7a0d5827cb373879f0c5a109f76702359ba9354fb563972cce5fd3"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "streak --version"
  end
end
