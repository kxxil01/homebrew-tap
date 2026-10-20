cask "textpolish" do
  version "0.0.66"
  sha256 "c0552192f6888bb856d2c0d277fcee6abcb8e6064b3b41a064fc52f7c9ca02d2"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.66/TextPolish.app.zip"
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
