cask "speedcheck" do
  version "1.6"
  sha256 "47c53d0120bf2154a02d9effedee9ffef9264bd2f6d136c52842a37e5eea4040"

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
