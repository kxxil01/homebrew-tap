cask "textpolish" do
  version "0.0.65"
  sha256 "795d8b8e7a9e544e44b1e826f1365763e5350964a8f58e1edc4f8939fda624f8"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.65/TextPolish.app.zip"
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
