cask "settl" do
  name "settl"
  desc "Terminal hex-based settlement game with LLM players"
  homepage "https://github.com/mozilla-ai/settl"
  version "0.1.4"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.4/settl-darwin-amd64.tar.gz"
      sha256 "c2d80a3c87dd2e8c2d57f63504127a361cfb7bcadd44a793a0b058a3502f7706"
      binary "settl-darwin-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.4/settl-darwin-arm64.tar.gz"
      sha256 "732bd97695d6aa94fca0f03db469aaf80b6987baf2ee4e4e17b02d2dd5c77344"
      binary "settl-darwin-arm64", target: "settl"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.4/settl-linux-amd64.tar.gz"
      sha256 "800274d1cdabfa092ddcde8987b0df3bf32107090a66a472b8e4011f17517aed"
      binary "settl-linux-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.4/settl-linux-arm64.tar.gz"
      sha256 "0facaafd6630ca57d4fd9c257a50d60faecd18248c35f73a8ca0793217fcace6"
      binary "settl-linux-arm64", target: "settl"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", staged_path.to_s], sudo: false
    end
  end
end
