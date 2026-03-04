cask "textpolish" do
  version "0.0.46"
  sha256 "cae7f2290906f3999960b752fc65c6a45ccde79080e08e2b686b7dc944bd58fc"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.46/TextPolish.app.zip"
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
