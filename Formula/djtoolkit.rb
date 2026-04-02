class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.0"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.0/djtoolkit-0.4.0-arm64.tar.gz"
  sha256 "ab5ed3a56bf1b59a61c1fa0b4a46d158e0e361cd69ed200ddf5e248253d32c33"

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
