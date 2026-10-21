cask "textpolish" do
  version "0.0.73"
  sha256 "fc705e02a31a2c792115db7eb8d40297b435a127294912b2187bb36a0c567f22"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.73/TextPolish.app.zip"
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
