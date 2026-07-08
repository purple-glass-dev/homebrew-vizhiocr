cask "vizhi-ocr" do
  version "0.2.0"
  sha256 "f5723da4b4cdda19a301ca1340ff3fa40da14556d8cb424d5b53fc0d07581b02"

  url "https://github.com/purple-glass-dev/vizhi-ocr/releases/download/v#{version}/VizhiOCR-#{version}.dmg"
  name "Vizhi OCR"
  desc "On-device OCR menu bar app powered by MLX vision models"
  homepage "https://github.com/purple-glass-dev/vizhi-ocr"

  depends_on macos: :sequoia

  app "VizhiOCR.app"

  zap trash: [
    "~/Library/Application Support/VizhiOCR",
    "~/Library/Caches/VizhiOCR",
    "~/Library/Caches/com.vizhi.ocr",
    "~/Library/Preferences/com.vizhi.ocr.plist",
    "~/Library/Saved Application State/com.vizhi.ocr.savedState",
  ]
end
