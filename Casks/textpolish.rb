cask "textpolish" do
  version "0.0.48"
  sha256 "b45cd6af65270d2aa86cee506f6b9b4e854447091e58f48c64c76f574c45a348"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.48/TextPolish.app.zip"
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
