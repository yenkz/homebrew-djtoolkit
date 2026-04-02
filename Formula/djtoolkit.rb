class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.18"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.18/djtoolkit-0.1.18-arm64.tar.gz"
  sha256 "c838e7bd07e14731d2698b5962c4725e082ca55a293b695a3a341ac50ccb7c02"

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
