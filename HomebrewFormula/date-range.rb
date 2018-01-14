require "language/node"

class DateRange < Formula
  desc "generate a json array of iso-8601 date strings between a start and end date (inclusive)."
  homepage "https://github.com/tphummel/date-range"
  url "https://github.com/tphummel/date-range/archive/v2.0.1.tar.gz"
  sha256 "d62c16b409649058824d8068d7d1f6876cbb8703ca7f4cb64b41ffe80cd95d9c"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "date-range --version"
  end
end
