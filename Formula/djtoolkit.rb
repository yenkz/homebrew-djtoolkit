class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.1"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.1/djtoolkit-0.1.1-arm64.tar.gz"
  sha256 "85b6faa6ce0aaa859ae88b5b1c0e80f915f6068a274073960743b9e96891ccec"

  depends_on "chromaprint"
  depends_on :macos

  def install
    bin.install "djtoolkit"
  end

  test do
    assert_match "djtoolkit", shell_output("#{bin}/djtoolkit --help")
  end
end
