cask "omini" do
  version "0.0.47"
  sha256 "bb02d04a43c667e0ea7cfe912f9e3cb810f0ccc4df7ba17e49297eaa398e71ee"

  url "https://ominidev.com/downloads/Omini-#{version}.dmg"
  name "Omini"
  desc "Terminal-first workspace and editor for vibe coding"
  homepage "https://ominidev.com/"

  livecheck do
    url "https://ominidev.com/updates/macos/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Omini.app"

  zap trash: [
    "~/Library/Application Support/Omini",
    "~/Library/Application Support/OminiDev",
    "~/Library/Preferences/com.ominidev.omini.plist",
    "~/Library/Saved Application State/com.ominidev.omini.savedState",
  ]
end
