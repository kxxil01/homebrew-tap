cask "textpolish" do
  version "0.0.76"
  sha256 "e383ab79e3a3f7b3b8e454000286e489feaae3f77e35d8b3dc87455f31cf3bca"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.76/TextPolish.app.zip"
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
