cask "regionclick" do
  version "1.0.2"
  sha256 "dd64006cd120cf8cfca502ce4635e677eec7a3028b637175355056587538c911"

  url "https://github.com/etanxing/regionclick-releases/releases/download/v#{version}/RegionClick-#{version}-arm64.zip"
  name "RegionClick"
  name "自动点击"
  desc "Timed auto clicker with selectable screen regions"
  homepage "https://github.com/etanxing/regionclick-releases"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "自动点击.app"

  uninstall quit: "local.wx.regionclick"

  zap trash: "~/Library/Preferences/local.wx.regionclick.plist"

  caveats <<~EOS
    This build is ad-hoc signed and is not notarized by Apple.
    macOS may require first-launch approval in System Settings > Privacy & Security.
    Grant Accessibility access in System Settings. Stop anytime with Command + Shift + period.
  EOS
end
