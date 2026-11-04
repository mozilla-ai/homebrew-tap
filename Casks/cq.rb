cask "cq" do
  version "0.19.2"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.2/cq_Darwin_x86_64.tar.gz"
      sha256 "4a96632738028ab89dfcc380872144eb80c9802bb770a6972495f68396227180"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.2/cq_Darwin_arm64.tar.gz"
      sha256 "c944318663621264c04dd9b074aa5faa4af760aa04fcac7f6e65111efe31175a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.2/cq_Linux_x86_64.tar.gz"
      sha256 "ed3d19f3bb24277a295b0f0765776ab3cbdb9eebe8584ec08ea3705f8d9d211b"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.2/cq_Linux_arm64.tar.gz"
      sha256 "1040ace9da3fc2a40053f5c9036706a1b5080475931b3fa037c92a95405fc0ec"
    end
  end

  name "cq"
  desc "cq is a shared knowledge store that helps agents avoid known pitfalls."
  homepage "https://github.com/mozilla-ai/cq"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "cq"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/cq"]
    end
  end
end
