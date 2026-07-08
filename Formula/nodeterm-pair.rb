class NodetermPair < Formula
  desc "Pair your phone with this machine for nodeterm mobile (QR + SSH key)"
  homepage "https://nodeterm.dev"
  url "https://github.com/nodeterm/nodeterm-pair/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d81b7447774d3864fc155679a5eecbc7917ea6d3203255b65b13e3bbc8d5aa4b"
  license "MIT"

  depends_on "qrencode"

  def install
    bin.install "nodeterm-pair"
  end

  test do
    output = shell_output("#{bin}/nodeterm-pair 2>&1", 64)
    assert_match "usage", output
  end
end
