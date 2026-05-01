cask "omini" do
  version "0.1.1"
  sha256 "e34e1e5ada9c2baa356ec70163b55cf8e6ffa0b571965dd3f2a889e9e7376c46"

  url "https://ominidev.com/downloads/OminiDev-#{version}.dmg"
  name "OminiDev"
  desc "Terminal-first workspace and editor for vibe coding"
  homepage "https://ominidev.com/"

  livecheck do
    url "https://ominidev.com/updates/macos/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "OminiDev.app"

  zap trash: [
    "~/Library/Application Support/OminiDev",
    "~/Library/Preferences/com.ominidev.app.plist",
    "~/Library/Saved Application State/com.ominidev.app.savedState",
  ]
end
