cask "textpolish" do
  version "0.0.49"
  sha256 "6d2b074f3fcddd98dcdfbcc6758c841c404e46225b8c24fbfff56a3548bff0ba"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.49/TextPolish.app.zip"
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
