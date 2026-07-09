cask "rs-wisper" do
  version "0.24.10"
  sha256 "1aef10656221c87520d20507b3314b9c8edc49941158d7852e546fd56c2d13b0"

  url "https://wisper.kulish.org/v#{version}/rs-wisper_#{version}_aarch64.dmg"
  name "rs-wisper"
  desc "Voice-to-text dictation app (local Whisper + cloud providers)"
  homepage "https://github.com/maxkulish/rs-wisper"

  auto_updates true
  depends_on macos: :sonoma

  app "rs-wisper.app"

  zap trash: [
    "~/Library/Application Support/rs-wisper",
    "~/Library/Logs/com.cloud-ai.rs-wisper",
    "~/Library/Preferences/com.cloud-ai.rs-wisper.plist",
  ]
end
