cask "textpolish" do
  version "0.0.60"
  sha256 "cd464803089e9ba2221432ca0060bbff29984e597c9e0fdb31daecd53132a1ca"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.60/TextPolish.app.zip"
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
