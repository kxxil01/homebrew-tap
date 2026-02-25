cask "textpolish" do
  version "0.0.36"
  sha256 "60ae1391e59fc7d7f58c2743489f995fa6d4a7f325484849dc55cb9bfec57d22"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.36/TextPolish.app.zip"
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
