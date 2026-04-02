class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.3.2"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.3.2/djtoolkit-0.3.2-arm64.tar.gz"
  sha256 "772e31fd5d29e2152296708cdafcfa360b8381b91d1851c11c6c9bae6f13306e"

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
