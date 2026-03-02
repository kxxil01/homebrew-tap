cask "textpolish" do
  version "0.0.40"
  sha256 "aea6a587c2196fbbec217b20010b803b02fc04a626dc7f666aa85dad7b20e4b8"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.40/TextPolish.app.zip"
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
