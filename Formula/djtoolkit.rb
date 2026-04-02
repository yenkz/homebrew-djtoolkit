class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.0"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.0/djtoolkit-0.4.0-arm64.tar.gz"
  sha256 "753e63a06e864e6022d401f67c1bc08c5a96fe12f796381c83c25e82e833bcae"

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
