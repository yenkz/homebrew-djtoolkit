class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.3.4"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.3.4/djtoolkit-0.3.4-arm64.tar.gz"
  sha256 "6b87425cbdf3b6614ed19e5a2c0698425f7a57d444347fedc971f0fdc44c08d6"

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
