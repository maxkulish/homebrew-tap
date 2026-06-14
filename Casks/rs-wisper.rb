cask "rs-wisper" do
  version "0.23.17"
  sha256 "a6f5cc7d4d7a00eb7ef4757665c6aa688f921566c3a0cebb01e69796c9941475"

  url "https://wisper.kulish.org/v#{version}/rs-wisper_#{version}_aarch64.dmg"
  name "rs-wisper"
  desc "Voice-to-text dictation app (local Whisper + cloud providers)"
  homepage "https://github.com/maxkulish/rs-wisper"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "rs-wisper.app"

  zap trash: [
    "~/Library/Application Support/rs-wisper",
    "~/Library/Logs/com.cloud-ai.rs-wisper",
    "~/Library/Preferences/com.cloud-ai.rs-wisper.plist",
  ]
end
