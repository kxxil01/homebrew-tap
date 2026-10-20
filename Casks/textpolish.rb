cask "textpolish" do
  version "0.0.67"
  sha256 "387ca9f15ca98ca9d2ed18833758bd5f35c12542bd296ce5facca5f6c0f432cb"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.67/TextPolish.app.zip"
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
