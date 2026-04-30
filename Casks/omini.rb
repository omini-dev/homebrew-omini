cask "omini" do
  version "0.1.1"
  sha256 "bb27707f246e986a0d6e9ad1f67efd15585eb37a1e5613d3855540eed6e9e652"

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
