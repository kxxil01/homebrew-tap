cask "textpolish" do
  version "0.0.42"
  sha256 "9475b6a83ee021f98af0679027a8a3a8293335047f7665160f662d2c7e8d4f6c"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.42/TextPolish.app.zip"
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
