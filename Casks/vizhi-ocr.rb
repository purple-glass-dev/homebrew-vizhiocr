cask "vizhi-ocr" do
  version "0.1.0"
  sha256 "e61e8901b7ffeace138ab099a2bbe7292c5a1ec97602a665708905a4998ce48f"

  url "https://github.com/purple-glass-dev/vizhi-ocr/releases/download/v#{version}/VizhiOCR-#{version}.dmg"
  name "Vizhi OCR"
  desc "On-device OCR menu bar app powered by MLX vision models"
  homepage "https://github.com/purple-glass-dev/vizhi-ocr"

  depends_on macos: ">= :sequoia"

  app "VizhiOCR.app"

  zap trash: [
    "~/Library/Application Support/VizhiOCR",
    "~/Library/Caches/VizhiOCR",
    "~/Library/Caches/com.vizhi.ocr",
    "~/Library/Preferences/com.vizhi.ocr.plist",
    "~/Library/Saved Application State/com.vizhi.ocr.savedState",
  ]
end
