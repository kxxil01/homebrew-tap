cask "textpolish" do
  version "0.0.50"
  sha256 "7ec517e1f2f62d1feee1a7909801373b6ccd8ea8afe8c7143094dd605536c638"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.50/TextPolish.app.zip"
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
