cask "textpolish" do
  version "0.0.70"
  sha256 "ed9e0fe8ee9b0d079a3cefbdc0e4a55ddac3f5ac7e1a3557f3122a20f843cd5d"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.70/TextPolish.app.zip"
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
