class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.4"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.4/djtoolkit-0.1.4-arm64.tar.gz"
  sha256 "b6e894d962976f5c47c4810b131caf6bd0f49ad03b83ec10721e573e07699f3f"

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
