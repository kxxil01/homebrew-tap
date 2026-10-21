cask "textpolish" do
  version "0.0.77"
  sha256 "1d5ef2d350711c95fae1a4248b08c0998d17ac0509075ab2cc3949c24bef602f"

  url "https://github.com/kxxil01/TextPolish/releases/download/0.0.77/TextPolish.app.zip"
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
