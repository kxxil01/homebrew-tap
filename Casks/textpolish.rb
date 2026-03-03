cask "textpolish" do
  version "0.0.43"
  sha256 "b5ad5611e6234807288e3069205f951cb892639b877e50dbb33afb33ed3a3eb6"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.43/TextPolish.app.zip"
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
