cask "textpolish" do
  version "0.0.45"
  sha256 "60bcd9830f2e8c22cda9a535345b2c354b5eb86c2ef37a5e235efa1a7f6184c6"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.45/TextPolish.app.zip"
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
