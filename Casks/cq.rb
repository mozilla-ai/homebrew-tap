cask "cq" do
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.0/cq_Darwin_x86_64.tar.gz"
      sha256 "48c86236e3b6ac817b538a92a71f0c2bdec811df5d81d6c126b2f78e9a5a8578"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.0/cq_Darwin_arm64.tar.gz"
      sha256 "b0ba63ca347d508827210d43a3a733b76cba9475beb7a69437bf55535df532e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.0/cq_Linux_x86_64.tar.gz"
      sha256 "ef5ba482217f0f3744c9b67cf72a62c96d86c5094cfe5b09f0047dc95a2d6685"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.0/cq_Linux_arm64.tar.gz"
      sha256 "33328503a6b483db1936ec6fc4ec3e88148f3c498dbaba64e9befa028fff40cd"
    end
  end

  name "cq"
  desc "cq is a shared knowledge store that helps agents avoid known pitfalls."
  homepage "https://github.com/mozilla-ai/cq"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "cq"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/cq"]
    end
  end
end
