cask "textpolish" do
  version "0.0.57"
  sha256 "aa5f2fea0b2312f804b3d0ce9e98239345b00617ad49c220239b2c553277ce1d"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.57/TextPolish.app.zip"
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
