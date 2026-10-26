cask "qingdict" do
  version "1.0.0"
  sha256 "22899f0baada3acb10ab93819df42c2aa2121ef81a33ae6a242579e0ec640793"

  url "https://github.com/etanxing/qingdict-releases/releases/download/v#{version}/QingDict-#{version}-arm64.zip"
  name "QingDict"
  name "轻词"
  desc "Menu bar dictionary with Youdao definitions and pronunciation"
  homepage "https://github.com/etanxing/qingdict-releases"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "轻词.app"

  uninstall quit: "local.wx.qingdict"

  zap trash: "~/Library/Preferences/local.wx.qingdict.plist"

  caveats <<~EOS
    This build is ad-hoc signed and is not notarized by Apple.
    macOS may require first-launch approval in System Settings > Privacy & Security.
    Use Option + Space to open the dictionary.
  EOS
end
