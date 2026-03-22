class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.12"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.12/djtoolkit-0.1.12-arm64.tar.gz"
  sha256 "10c50736b3f812c74d3c5d6a04d1f246082c3164db2e49eb546de3900cfae807"

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
