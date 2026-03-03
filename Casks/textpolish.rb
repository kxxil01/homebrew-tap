cask "textpolish" do
  version "0.0.44"
  sha256 "5a57bc1bbea4b5468236bea95712c6109699102d4f9a2ad323229eb4c3d77c12"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.44/TextPolish.app.zip"
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
