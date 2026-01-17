cask "textpolish" do
  version "0.0.32"
  sha256 "81949a9ed2f1d89d32fb5c1def4d387cc6eceb63a7cb4c3b7c085243a7d1a38d"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.32/TextPolish.app.zip"
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
