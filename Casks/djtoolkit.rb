cask "djtoolkit" do
  arch arm: "aarch64", intel: "x86_64"
  version "0.3.2"
  sha256 arm:   "a1b6fa035a92e7bced54ce99eaf30b79cfc77bdbf3eeb3b38189c3156f38300c",
         intel: ""

  url "https://github.com/yenkz/djtoolkit/releases/download/v0.3.2/djtoolkit_#{version}_#{arch}.dmg",
      verified: "github.com/yenkz/djtoolkit/"
  name "DJ Toolkit"
  desc "DJ library agent — download, tag, and organize music automatically"
  homepage "https://www.djtoolkit.net"

  depends_on macos: ">= :ventura"
  app "djtoolkit.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/djtoolkit.app"],
                   sudo: false
  end

  uninstall quit: "net.djtoolkit.agent"

  zap trash: [
    "~/.djtoolkit",
    "~/Library/Caches/net.djtoolkit.agent",
    "~/Library/Preferences/net.djtoolkit.agent.plist",
    "~/Library/Saved Application State/net.djtoolkit.agent.savedState",
  ]

  caveats <<~EOS
    DJ Toolkit runs as a menu bar agent. After install, launch it
    and complete the setup wizard. It will then live in your menu bar.
  EOS
end
