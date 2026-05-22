cask "textpolish" do
  version "0.0.59"
  sha256 "23c3351cb8217e1418e23c278137e9d02e19fb891956ca27565de80dc50ba303"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.59/TextPolish.app.zip"
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
