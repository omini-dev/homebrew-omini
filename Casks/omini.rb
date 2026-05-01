cask "omini" do
  version "0.1.1"
  sha256 "2c4598f6f3cc0f303e70776718a919e1b9c80b7b14732fb97e1c9cb2baf4c53c"

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
