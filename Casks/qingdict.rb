cask "qingdict" do
  version "1.1.0"
  sha256 "aaeaf9f7d08e2a56693bdea8b21bc2ed1a72f94edaaf2ce8ba870b654487e48a"

  url "https://github.com/etanxing/qingdict-releases/releases/download/v#{version}/QingDict-#{version}-arm64.zip"
  name "QingDict"
  name "轻词"
  desc "Menu bar dictionary with offline lookup and Youdao pronunciation"
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
