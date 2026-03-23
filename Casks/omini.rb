cask "omini" do
  version "1.0.5"
  sha256 "3e6101e3e82920c58f724e5614dbc40a6192f580b46fbd057917bf6f38f8177f"

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
