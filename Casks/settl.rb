cask "settl" do
  name "settl"
  desc "Terminal hex-based settlement game with LLM players"
  homepage "https://github.com/mozilla-ai/settl"
  version "0.1.1"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.1/settl-darwin-amd64.tar.gz"
      sha256 "c791161dc00463856b5c44331728b1339c3b39144a01ecfbe42c973581502998"
      binary "settl-darwin-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.1/settl-darwin-arm64.tar.gz"
      sha256 "f3daba2698ede0c29a9289992f930776aa17a74a605da5bf237958fee342895c"
      binary "settl-darwin-arm64", target: "settl"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.1/settl-linux-amd64.tar.gz"
      sha256 "d6807328c1a0f910565e7c98830d06eaeeaa56c477a773bbe23edbb4ac37bfba"
      binary "settl-linux-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.1/settl-linux-arm64.tar.gz"
      sha256 "bd8f98c9d2734cbf1de19cca70adc03755b28c96471889cc7dd09665ccb93aff"
      binary "settl-linux-arm64", target: "settl"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", staged_path.to_s], sudo: false
    end
  end
end
