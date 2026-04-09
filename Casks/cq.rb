cask "cq" do
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.2/cq_Darwin_x86_64.tar.gz"
      sha256 "a0ff24bdd6e87d1e512204e366935f1231ca274e56e58a8f59e8a1227a4a368b"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.2/cq_Darwin_arm64.tar.gz"
      sha256 "542bb4d30e04893edf4586217a66aeb56360e7465b9f999791bcc84f383ff4b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.2/cq_Linux_x86_64.tar.gz"
      sha256 "8d964eb608e635ff1c27c8e7ab218c92ae9b034b1bd23d90355701e561f253e2"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.2/cq_Linux_arm64.tar.gz"
      sha256 "6064ee24f2a70ceef6a540f3b6e23991c3579720251eb4d24ee026e3aecd195a"
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
