cask "textpolish" do
  version "0.0.64"
  sha256 "2a35454fd2f6b5709faa10dc8baded3398d83a2c4aed8fd3453e3d6e5e699eb3"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.64/TextPolish.app.zip"
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
