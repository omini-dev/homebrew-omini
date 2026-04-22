cask "omini" do
  version "0.0.46"
  sha256 "43745896d43a6c964e728b3f93697ff259db8ca67fb5c370ceb2635816b829fc"

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
