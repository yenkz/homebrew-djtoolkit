class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.3.2"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.3.2/djtoolkit-0.3.2-arm64.tar.gz"
  sha256 "0317afa34e2201c23f04ac9c848e77b2c5a158cf9141d5e655fa5e99862f73bc"

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
