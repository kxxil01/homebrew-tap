cask "textpolish" do
  version "0.0.35"
  sha256 "163365504240be3dd479beaf61723aed703f26cef2d58c315fb75ad2ae7f9165"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.35/TextPolish.app.zip"
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
