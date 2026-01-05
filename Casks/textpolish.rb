cask "textpolish" do
  version "0.0.10"
  sha256 "e276e91dff4eb0b1959269c8b9b777c966586897b58c49a1bea6ef8a3e4b2dd2"

  url "https://github.com/kxxil01/TextPolish/releases/download/v#{version}/TextPolish.app.zip"
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
