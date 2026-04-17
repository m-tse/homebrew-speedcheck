cask "speedcheck" do
  version "1.5"
  sha256 "4106594b2d5308b28e3c991e804885eb2ff7c0ad9c63feeceb4cf5c6d5e7a923"

  url "https://github.com/m-tse/SpeedCheckMacOS/releases/download/v#{version}/SpeedCheck-#{version}.zip"
  name "SpeedCheck"
  desc "Menu bar app that shows internet speed using Cloudflare speed test"
  homepage "https://github.com/m-tse/SpeedCheckMacOS"

  depends_on macos: ">= :ventura"

  app "SpeedCheck.app"

  zap trash: [
    "~/Library/Preferences/com.improvmx.speedcheck.plist",
    "~/Library/Preferences/com.improvmx.networkspeed.plist",
  ]
end
