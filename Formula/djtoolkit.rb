class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.1.16"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.1.16/djtoolkit-0.1.16-arm64.tar.gz"
  sha256 "e63f581e572ea932efec9e03b19029add3bb5a3a3f62aa22083398de6bf54b8f"

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
