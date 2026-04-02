class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.3.2"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.3.2/djtoolkit-0.3.2-arm64.tar.gz"
  sha256 "7ae2e040ded41bfdeb9a1eeaae238554e4669a611086d4151fef55851b3c7c66"

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
