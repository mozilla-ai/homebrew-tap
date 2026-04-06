cask "settl" do
  name "settl"
  desc "Terminal hex-based settlement game with LLM players"
  homepage "https://github.com/mozilla-ai/settl"
  version "0.1.2"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.2/settl-darwin-amd64.tar.gz"
      sha256 "baf61335130a53f8581183f62a18f4d8842d5782c758d1d59364a6459b90b70e"
      binary "settl-darwin-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.2/settl-darwin-arm64.tar.gz"
      sha256 "53a17eb5875bb42207591c5c9b34dcb35d9f6b781eaafa8c054347bf85768a5a"
      binary "settl-darwin-arm64", target: "settl"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.2/settl-linux-amd64.tar.gz"
      sha256 "c01e980dcd2b6e68e2033623ca2ac858cc9247f46add58c349a9abb1b9209c11"
      binary "settl-linux-amd64", target: "settl"
    end
    on_arm do
      url "https://github.com/mozilla-ai/settl/releases/download/v0.1.2/settl-linux-arm64.tar.gz"
      sha256 "b02f7c46b529fb5717690053a25450f99f516945feaf0bc0a760aa22861e11ba"
      binary "settl-linux-arm64", target: "settl"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", staged_path.to_s], sudo: false
    end
  end
end
