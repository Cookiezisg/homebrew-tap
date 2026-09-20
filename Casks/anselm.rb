cask "anselm" do
  version "0.1.4"
  sha256 "682889535c27ba4e988e944ef160540a626fdaf2da5426c68a9a87ffddb6b74c"

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
