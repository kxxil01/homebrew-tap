cask "textpolish" do
  version "0.0.79"
  sha256 "df8a426f055759f8ed53c0290addc7dc06d2a97482bb36d2f65c393c837af9f2"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.79/TextPolish.app.zip"
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
