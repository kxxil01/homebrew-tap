cask "textpolish" do
  version "0.0.52"
  sha256 "a1758c0551bdcf7944700fb6d3c0201740a277f69cd72eac2d5ed086489289e2"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.52/TextPolish.app.zip"
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
