cask "textpolish" do
  version "0.0.20"
  sha256 "0e531ed06a6bcc474ac86a03de83fe2586891fd177250d9dd532c92b6af345f8"

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
