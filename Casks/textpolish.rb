cask "textpolish" do
  version "0.0.58"
  sha256 "289156dcc649cb3e005eb63fc9c549ec9f0823891eac9f583cc2ff97cd9d48d0"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.58/TextPolish.app.zip"
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
