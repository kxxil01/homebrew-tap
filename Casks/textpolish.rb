cask "textpolish" do
  version "0.0.81"
  sha256 "3da2e0321f1a77ca572a101f28c6d172c6f61fc116a5a2c9be173d4df7c34ad2"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.81/TextPolish.app.zip"
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
