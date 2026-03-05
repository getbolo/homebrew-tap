cask "bolo" do
  version "1.0.0"
  sha256 "CHECKSUM_HERE"

  url "https://rsbrckveklnximzfnczw.supabase.co/functions/v1/download?v=#{version}"
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
