cask "regionclick" do
  version "1.0.0"
  sha256 "5c4d7cc21883985b19c07868787bb7de33a6f3075347f6fa41714d02adb5e882"

  url "https://github.com/etanxing/regionclick-releases/releases/download/v#{version}/RegionClick-#{version}-arm64.zip"
  name "RegionClick"
  name "轻点"
  desc "Timed auto clicker with selectable screen regions"
  homepage "https://github.com/etanxing/regionclick-releases"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "轻点.app"

  uninstall quit: "local.wx.regionclick"

  zap trash: "~/Library/Preferences/local.wx.regionclick.plist"

  caveats <<~EOS
    This build is ad-hoc signed and is not notarized by Apple.
    macOS may require first-launch approval in System Settings > Privacy & Security.
    Grant Accessibility access in System Settings. Stop anytime with Command + Shift + period.
  EOS
end
