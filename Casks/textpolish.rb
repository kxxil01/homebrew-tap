cask "textpolish" do
  version "0.0.34"
  sha256 "8bf193e3bd6dc658d0704c2e12f2d32ac9802a598c49a0239e5487941fd449ce"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.34/TextPolish.app.zip"
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
