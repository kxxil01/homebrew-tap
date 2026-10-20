cask "textpolish" do
  version "0.0.61"
  sha256 "48a925f97379d6ab16eaeb24e0a612183256c106e78394199b052cd1981d28bd"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.61/TextPolish.app.zip"
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
