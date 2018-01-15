require "language/node"

class Streak < Formula
  desc "gather streaks from an ordered json array on stdin"
  homepage "https://github.com/tphummel/streak"
  url "https://github.com/tphummel/streak/archive/v1.0.0.tar.gz"
  sha256 "9e1619174d9ec2546a1d2da35b807a2f7f52577e4b05fac26d0c0fdc544ec580"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "streak --version"
  end
end
