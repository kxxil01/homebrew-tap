cask "textpolish" do
  version "0.0.33"
  sha256 "78bf544e9d50e00aba4d76ee458ec8c260094205cd7679b81f17cb51aaeceee2"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.33/TextPolish.app.zip"
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
