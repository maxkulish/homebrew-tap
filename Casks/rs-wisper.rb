cask "rs-wisper" do
  version "0.25.4"
  sha256 "9be32cb6bdc2eef159e8a2771182df14b85f736aa1a4a330a93e9d38ae1011d8"

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
