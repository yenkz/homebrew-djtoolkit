class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.11"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.11/djtoolkit-0.1.11-arm64.tar.gz"
  sha256 "c6d029ad40e1cde2481583bdb5fad7bd6f853632e210e3c6265296b2a4b1d2a4"

  depends_on "chromaprint"
  depends_on :macos

  def install
    bin.install "djtoolkit"
    (share/"djtoolkit").install "DJToolkit Setup.app" if Dir.exist?("DJToolkit Setup.app")
  end

  def caveats
    <<~EOS
      Run the setup wizard to configure djtoolkit:
        djtoolkit setup

      Or open the app directly:
        open #{share}/djtoolkit/DJToolkit\\ Setup.app
    EOS
  end
end
