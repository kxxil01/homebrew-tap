cask "textpolish" do
  version "0.0.17"
  sha256 "7e31155cf193cabfa016c1ad8d6c95b7162c5db0f1d7d3223aaa064bd19f1ec5"

  url "https://github.com/kxxil01/TextPolish/releases/download/v#{version}/TextPolish.app.zip"
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
