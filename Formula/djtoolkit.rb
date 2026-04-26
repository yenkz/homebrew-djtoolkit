class Djtoolkit < Formula
  desc "DJ music library toolkit — download, fingerprint, tag, and manage tracks"
  homepage "https://github.com/yenkz/djtoolkit"
  license "MIT"
  version "0.4.5"

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.4.5/djtoolkit-0.4.5-arm64.tar.gz"
  sha256 "da8ce19dae5e47894a773e222950fdeec41a0fa516b5924a6148ab7dd0ff25b0"

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
