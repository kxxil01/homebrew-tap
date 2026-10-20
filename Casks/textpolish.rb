cask "textpolish" do
  version "0.0.63"
  sha256 "cbcee892141a672afae540e5838ece214ae22c9dc2bd22a0fed2b2bda8d21574"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.63/TextPolish.app.zip"
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
