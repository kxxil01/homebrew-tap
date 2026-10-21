cask "textpolish" do
  version "0.0.71"
  sha256 "88e8c23ae1a55fc9a59eadbc07d94a4d6db717df0672be24d479e1bbaa9cb84e"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.71/TextPolish.app.zip"
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
