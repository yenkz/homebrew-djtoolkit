cask "djtoolkit" do
  arch arm: "aarch64", intel: "x86_64"
  version "0.3.2"
  sha256 arm:   "500bbd73fd953b6607672f25941ee3646eff6913fc880a42ddf675429ae48ba6",
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
