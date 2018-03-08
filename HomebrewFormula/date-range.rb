require "language/node"

class DateRange < Formula
  desc "generate a json array of iso-8601 date strings between a start and end date (inclusive)."
  homepage "https://github.com/tphummel/date-range"
  url "https://github.com/tphummel/date-range/archive/v2.1.0.tar.gz"
  sha256 "ecee945b473179af64aa55e4097c563891fecf4e9d562e0aa4d03f3ec46fe484"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "date-range --version"
  end
end
