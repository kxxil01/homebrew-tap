cask "textpolish" do
  version "0.0.84"
  sha256 "fbd862b051ce22d275d5d27052733cd7330bb09ad1fb56638436c2737f060125"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.84/TextPolish.app.zip"
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
