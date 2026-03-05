cask "bolo" do
  version "1.0.0"
  sha256 "602722551a45cab018933702b20e6bb3b4091d7f6dfb40990042627fc5b25aa1"

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
