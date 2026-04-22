class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.4"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.4/djtoolkit-0.4.4-arm64.tar.gz"
  sha256 "a12f74cff9cc4b1c2303e1b33a51c09d11835527bf0f6502abefebdc2d4e1720"

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
