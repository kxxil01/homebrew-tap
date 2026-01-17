cask "textpolish" do
  version "0.0.29"
  sha256 "bfca3d42e4b14423571a269d914be130e88c1e0b413fb3079a0d4d23040ec2ea"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.29/TextPolish.app.zip"
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
