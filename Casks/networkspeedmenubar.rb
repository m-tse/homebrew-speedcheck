cask "networkspeedmenubar" do
  version "1.4"
  sha256 "7484173bb614a876ee0f7cd44cb5a9ed1aef900ab727882dcec132f954e3ddb4"

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
