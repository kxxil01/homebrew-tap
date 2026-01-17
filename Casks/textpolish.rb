cask "textpolish" do
  version "0.0.30"
  sha256 "2a133ee0c3d44bc028ce989b33e0e098e615989c61032c7eeae83b34124e0042"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.30/TextPolish.app.zip"
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
