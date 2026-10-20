cask "textpolish" do
  version "0.0.69"
  sha256 "ac679654723ff73d4ea843e6d12f33f3d789c1311c3b1577c2de9dba816c6411"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.69/TextPolish.app.zip"
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
