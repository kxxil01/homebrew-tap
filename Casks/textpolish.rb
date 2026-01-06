cask "textpolish" do
  version "0.0.19"
  sha256 "1becb15b4805099c5e1b29c5c48c55011c271250eb8acc7451f39f5aa27a80e0"

  url "https://github.com/kxxil01/TextPolish/releases/download/v#{version}/TextPolish.app.zip"
  name "TextPolish"
  desc "Grammar correction anywhere on macOS"
  homepage "https://github.com/kxxil01/TextPolish"

  depends_on macos: ">= :sonoma"

  app "TextPolish.app"

  zap trash: [
    "~/Library/Application Support/TextPolish",
    "~/Library/Preferences/com.kxxil01.TextPolish.plist",
  ]
end
