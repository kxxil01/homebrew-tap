cask "textpolish" do
  version "0.0.25"
  sha256 "9521d38d4435feab02b5a184e36ccf157d798f2e3d1f5e714e9c9ae742e07174"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.25/TextPolish.app.zip"
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
