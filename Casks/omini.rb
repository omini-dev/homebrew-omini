cask "omini" do
  version "0.1.1"
  sha256 "533114c13f34cadd524a0164870aae8eba73c265a305579df3ebae214c73b727"

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
