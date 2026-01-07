cask "textpolish" do
  version "0.0.24"
  sha256 "649c018d85448ee8e1cf838a0c0195671d6d09330cec4e1357d505cca6007bde"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.24/TextPolish.app.zip"
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
