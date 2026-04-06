cask "settl" do
  name "settl"
  desc "Terminal hex-based settlement game with LLM players"
  homepage "https://github.com/mozilla-ai/settl"
  version "0.1.3"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.3/settl-darwin-amd64.tar.gz"
      sha256 "4e95528c8d2b737dec5e9db2bd9b11a8d7d494f8d4a241116ac91f009ee8857d"
      binary "settl-darwin-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.3/settl-darwin-arm64.tar.gz"
      sha256 "3bea77ade9dc79f2e7a49fc8755be26a877f783ccc78fcf7309d0910989c0013"
      binary "settl-darwin-arm64", target: "settl"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.3/settl-linux-amd64.tar.gz"
      sha256 "67831192d4037d23c3799e9d8ad823fb96098bd1b7742eca3f7927c76b2105f6"
      binary "settl-linux-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.3/settl-linux-arm64.tar.gz"
      sha256 "b1e9b4c8f4f816a692d543e821b4a75845bcfb5fc31bb63ccaf8af62a04c5d0c"
      binary "settl-linux-arm64", target: "settl"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", staged_path.to_s], sudo: false
    end
  end
end
