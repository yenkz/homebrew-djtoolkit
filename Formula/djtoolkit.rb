class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.2.0"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.2.0/djtoolkit-0.2.0-arm64.tar.gz"
  sha256 "88e79db0f76bda59e3e90e38ef739c38873ed3532e5b00683612097f17f70a87"

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
