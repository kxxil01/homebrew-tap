cask "textpolish" do
  version "0.0.83"
  sha256 "7088bb21082542305d4085a7537b823849baa647096dfa56344758fe48cecf75"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.83/TextPolish.app.zip"
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
