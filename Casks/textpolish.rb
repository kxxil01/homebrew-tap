cask "textpolish" do
  version "0.0.51"
  sha256 "d758f5b720fe52ed4e8ca483553cf7e68fc38943cb4146b864022be4eda5b9c1"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.51/TextPolish.app.zip"
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
