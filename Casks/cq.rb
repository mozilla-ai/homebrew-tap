cask "cq" do
  version "0.11.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.11.0/cq_Darwin_x86_64.tar.gz"
      sha256 "629e89c6a05ade67f9d27c3e592bd8b249bb3f16265780c0717a3e6e6c15b9f5"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.11.0/cq_Darwin_arm64.tar.gz"
      sha256 "233b948aed840e2191973a3a7c2e738b27652d509f4f0848c84972b32c7b4ec3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.11.0/cq_Linux_x86_64.tar.gz"
      sha256 "1ff64b756aa6efb5822d92bb54e3bc723ff72c4a5217224436e4bab0f26ee537"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.11.0/cq_Linux_arm64.tar.gz"
      sha256 "f31846762098ca2d05db3aa79002213aa2d18ac24d8e95fb0e7c0682fba8c448"
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
