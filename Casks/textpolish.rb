cask "textpolish" do
  version "0.0.75"
  sha256 "f5abfb85f2008480a137be816219b4e5c0a97f60cce1b4284a6e7cd90ee392ba"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.75/TextPolish.app.zip"
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
