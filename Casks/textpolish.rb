cask "textpolish" do
  version "0.0.82"
  sha256 "a0505eac3768308c07b84f1f98c657a9d0b24648e65c2e89527d2722b6ab6028"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.82/TextPolish.app.zip"
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
