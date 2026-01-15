cask "textpolish" do
  version "0.0.28"
  sha256 "a24ebd80e0b267d46d6bf01950dbe7849ae6438ae1ddf1819ae48c2ba9e36c6a"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.28/TextPolish.app.zip"
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
