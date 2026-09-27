cask "ninaivu" do
  version "0.3.0"
  sha256 "7110627398f0879842e9c52bd1d7b513779f8b9799b1cbd5e4d1a433a12b29f3"

  url "https://github.com/mailbagrahul/ninaivu-releases/releases/download/v#{version}/Ninaivu-#{version}.zip"
  name "Ninaivu"
  desc "Menu bar reminders: pull a thread or type 'tea 12m'"
  homepage "https://github.com/mailbagrahul/ninaivu-releases"

  depends_on macos: ">= :sonoma"

  auto_updates true

  app "Ninaivu.app"

  uninstall quit: "io.ninaivu.app"

  zap trash: [
    "~/Library/Application Support/Ninaivu",
    "~/Library/Preferences/io.ninaivu.app.plist",
  ]

  caveats <<~EOS
    Ninaivu is ad-hoc signed (not notarized yet). If macOS says it cannot
    verify the developer on first launch, open System Settings › Privacy &
    Security and click "Open Anyway", then launch it again.
  EOS
end
