cask "textpolish" do
  version "0.0.62"
  sha256 "30b0a259ae88b9e9fbf0106f0ff6bdf3e25f158900aa56b09404dac177c53a8f"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.62/TextPolish.app.zip"
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
