class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.4"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.4/djtoolkit-0.4.4-arm64.tar.gz"
  sha256 "237642172c69e746cc2a82b569976f968e7f35ec66fbcaf50d7447ad83d11ea6"

  depends_on "chromaprint"
  depends_on :macos

  def install
    # Onedir PyInstaller output: djtoolkit/ directory with binary + _internal/
    libexec.install Dir["*"]
    bin.install_symlink libexec/"djtoolkit"
  end

  def caveats
    <<~EOS
      Run the setup wizard to configure djtoolkit:
        djtoolkit agent configure

      Start the agent with system tray:
        djtoolkit agent tray
    EOS
  end
end
