cask "anselm" do
  version "0.1.3"
  sha256 "3a23dfb003cb4ef075d6c59be65967d898c40aaed54bc4a09e50ee2e21d838d4"

  url "https://github.com/Cookiezisg/Anselm/releases/download/v#{version}/Anselm-#{version}-macos.dmg"
  name "Anselm"
  desc "Agentic workflow platform that builds itself, local-first"
  homepage "https://anselm.website/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself through Sparkle; Homebrew should not fight it.
  auto_updates true
  depends_on macos: ">= :monterey"

  app "Anselm.app"

  zap trash: [
    "~/Library/Containers/website.anselm.app",
    "~/Library/Preferences/website.anselm.app.plist",
  ]
end
