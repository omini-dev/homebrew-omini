cask "omini" do
  version "1.0.4"
  sha256 "6dd6b21d64f6c591967b5f1e6b0cf2f9c03ecd5e68233cebea3adff8988d160a"

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
