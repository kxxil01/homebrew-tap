cask "textpolish" do
  version "0.0.80"
  sha256 "1860155dc31960e3bd5d99ad1bc0fedc1fdc18e9dc61cb88d9353d0b948ee8a9"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.80/TextPolish.app.zip"
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
