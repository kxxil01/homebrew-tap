cask "textpolish" do
  version "0.0.41"
  sha256 "3e8155ef22f89a434ddf7795e3ed92f334891875f2ba49ef22d156088c330532"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.41/TextPolish.app.zip"
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
