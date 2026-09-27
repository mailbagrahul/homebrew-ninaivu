cask "ninaivu" do
  version "0.4.0"
  sha256 "5a4fb4a240d68a060136bce7c5fb470fb59a87002b047316e05a6c8fea9a519c"

  url "https://github.com/mailbagrahul/ninaivu-releases/releases/download/v#{version}/Ninaivu-#{version}.zip"
  name "Ninaivu"
  desc "Menu bar reminders: pull a thread or type 'tea 12m'"
  homepage "https://github.com/mailbagrahul/ninaivu-releases"

  depends_on macos: :sonoma

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
