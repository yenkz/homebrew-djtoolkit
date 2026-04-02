class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.3.3"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.3.3/djtoolkit-0.3.3-arm64.tar.gz"
  sha256 "ad8089ea6fec80ef574d279bb0bb56393d941e5cd2d7fd7bae4919f5ccc2fad0"

  depends_on "chromaprint"
  depends_on :macos

  def install
    bin.install "djtoolkit"
  end

  def caveats
    <<~EOS
      Run the setup wizard to configure djtoolkit:
        djtoolkit agent configure

      Or install the desktop app for a GUI experience:
        brew install --cask djtoolkit
    EOS
  end
end
