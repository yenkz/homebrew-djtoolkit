class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.1"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.1/djtoolkit-0.4.1-arm64.tar.gz"
  sha256 "51a01bee0e1d8685e8e7573f2c31cbfc4a44cf31896964da36a00a1a80e51288"

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
