cask "textpolish" do
  version "0.0.37"
  sha256 "08b3dc1b76f851e1d7d61e6827927f6ff26b3b601c364eeba5f359331eb96f0c"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.37/TextPolish.app.zip"
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
