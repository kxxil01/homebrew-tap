cask "textpolish" do
  version "0.0.55"
  sha256 "6ff352e845c12b5466786d624ab94444a58af82ff02cd363aa53defa04c0cc56"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.55/TextPolish.app.zip"
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
