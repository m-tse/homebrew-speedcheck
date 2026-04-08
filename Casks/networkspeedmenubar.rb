cask "networkspeedmenubar" do
  version "1.3"
  sha256 "bbecfb65ae2d646e2d4f6dccc986fb9a307608698b3bc9a0394618d82dd4c66d"

  url "https://github.com/m-tse/NetworkSpeedMenuBarApp/releases/download/v#{version}/NetworkSpeed-#{version}.zip"
  name "Network Speed Menu Bar"
  desc "Menu bar app that shows internet speed using Cloudflare speed test"
  homepage "https://github.com/m-tse/NetworkSpeedMenuBarApp"

  depends_on macos: ">= :ventura"

  app "Network Speed.app"

  zap trash: [
    "~/Library/Preferences/com.improvmx.networkspeed.plist",
  ]
end
