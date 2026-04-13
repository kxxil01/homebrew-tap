cask "textpolish" do
  version "0.0.54"
  sha256 "c7011cc21501d9a0d6f2cc3c9a131ee5bd21924855222dd26561d63e14544bcd"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.54/TextPolish.app.zip"
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
