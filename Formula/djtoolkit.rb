class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.0"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.0/djtoolkit-0.4.0-arm64.tar.gz"
  sha256 "b90fdf4fc29b9cf54932f1c20248809b3a044ca292fb5c2c959cca1ee56c2cfe"

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
