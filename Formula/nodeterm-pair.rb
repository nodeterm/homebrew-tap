class NodetermPair < Formula
  desc "Pair your phone with this machine for nodeterm mobile (QR + SSH key)"
  homepage "https://nodeterm.dev"
  url "https://github.com/nodeterm/nodeterm-pair/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_FILLED_AFTER_TAG_PUSH"
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
