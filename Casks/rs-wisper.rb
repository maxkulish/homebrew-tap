cask "rs-wisper" do
  version "0.23.21"
  sha256 "feb7d5b374b6ceb2411612a22416de880d2bf2b31ecde228253bcfc4f72cb25c"

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
