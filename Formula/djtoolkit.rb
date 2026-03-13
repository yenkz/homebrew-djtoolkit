class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.1"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.1/djtoolkit-0.1.1-arm64.tar.gz"
  sha256 "b8433e9454c71f4f0c3ac9d3b3f982c421b816969a350ba4b920c24af3d05f71"

  depends_on "chromaprint"
  depends_on :macos

  def install
    bin.install "djtoolkit"
  end

  test do
    assert_match "djtoolkit", shell_output("#{bin}/djtoolkit --help")
  end
end
