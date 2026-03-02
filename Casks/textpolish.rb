cask "textpolish" do
  version "0.0.38"
  sha256 "e17528b428212d47342d9155521233b7cd152e3b475a93d791403519580b1994"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.38/TextPolish.app.zip"
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
