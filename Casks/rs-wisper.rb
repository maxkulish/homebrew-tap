cask "rs-wisper" do
  version "0.26.5"
  sha256 "67a49c8a4492867d454b076e88faa881ce557719b73ba272745eba72731946ac"

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
