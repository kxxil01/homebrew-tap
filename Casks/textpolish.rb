cask "textpolish" do
  version "0.0.72"
  sha256 "b89ef674162035b3c9de7eebb30091952d0eb17904f97cf6e68b9b694e79ea49"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.72/TextPolish.app.zip"
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
