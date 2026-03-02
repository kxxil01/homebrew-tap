cask "textpolish" do
  version "0.0.39"
  sha256 "3b2e8251bfb46aff34c60213acc283bdad0217d3fcb270edad864a41d6a98af7"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.39/TextPolish.app.zip"
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
