cask "textpolish" do
  version "0.0.47"
  sha256 "0ed71ba89f514fc56a7ffc062a342f0d4278a9352717855846d382417228bc34"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.47/TextPolish.app.zip"
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
