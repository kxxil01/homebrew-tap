cask "textpolish" do
  version "0.0.78"
  sha256 "dfa880ba1d1d90a8a72eee39792df4719cdfa2f6c85d3a7073b2b85d10680d65"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.78/TextPolish.app.zip"
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
