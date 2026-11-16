cask "regionclick" do
  version "1.0.1"
  sha256 "fbc3c41dddc5c6692c7a7134c1e393e078df0af030de94121ee574cd7b13ccab"

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
