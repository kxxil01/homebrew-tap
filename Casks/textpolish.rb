cask "textpolish" do
  version "0.0.53"
  sha256 "9c71072e989b341e38579314caaf1a5ae107235bb9227a6d5e4eac42b550ec38"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.53/TextPolish.app.zip"
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
