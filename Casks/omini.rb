cask "omini" do
  version "1.6.1"
  sha256 "8d97d1621fcc4f4aee1fdcbf5702cb8bb43c5ed9b8918df900014f256665439c"

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
