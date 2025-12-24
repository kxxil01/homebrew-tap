cask "textpolish" do
  version "0.0.6"
  sha256 "621f234b52b71274081a654e7304123d9784411887ea811cd08d6d015822a6fc"

  url "https://github.com/kxxil01/TextPolish/releases/download/v#{version}/TextPolish.app.zip"
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
