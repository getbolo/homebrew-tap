cask "bolo" do
  version :latest
  sha256 :no_check

  url "https://rsbrckveklnximzfnczw.supabase.co/functions/v1/download"
  name "Bolo"
  desc "AI-powered voice dictation for macOS"
  homepage "https://www.bolo.sh"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Bolo.app"

  zap trash: [
    "~/Library/Application Support/Bolo",
  ]
end
