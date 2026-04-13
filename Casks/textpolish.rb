cask "textpolish" do
  version "0.0.56"
  sha256 "4f39d0751b75711d823831c291b14d65927e58013a46a92a7b24051a6b54d0c1"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.56/TextPolish.app.zip"
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
