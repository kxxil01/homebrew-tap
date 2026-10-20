cask "textpolish" do
  version "0.0.68"
  sha256 "692745f5785c45a54940101d8785aa9c9fa3aef1464827f022ab3e99de62430b"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.68/TextPolish.app.zip"
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
