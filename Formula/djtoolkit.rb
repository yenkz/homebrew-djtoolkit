class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.2"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.2/djtoolkit-0.1.2-arm64.tar.gz"
  sha256 "27e40d9c64b127336fd424f25502c66d91b4e65ae1e8009f6d886693ea478828"

  depends_on "chromaprint"
  depends_on :macos

  def install
    bin.install "djtoolkit"
  end

  test do
    assert_match "djtoolkit", shell_output("#{bin}/djtoolkit --help")
  end
end
