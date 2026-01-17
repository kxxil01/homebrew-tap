cask "textpolish" do
  version "0.0.31"
  sha256 "05560bd9297bb5096d1363978866111880bf79b7bbae58ec75dc05fbebccefee"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.31/TextPolish.app.zip"
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
