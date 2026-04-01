cask "cq" do
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.1.0/cq_Darwin_x86_64.tar.gz"
      sha256 "a4b0b2565929650f917b742105e8f6ab2da7a12a47c772a76e4de5027a7fac4a"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.1.0/cq_Darwin_arm64.tar.gz"
      sha256 "e068179cc14655f5336c226313a8659e9282edf1a31229af3ee712c8ac05b59e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.1.0/cq_Linux_x86_64.tar.gz"
      sha256 "61d3dff635892652d33b3e30b1930c7682492a2c6e569173c57a571d21059f5c"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.1.0/cq_Linux_arm64.tar.gz"
      sha256 "87071d1429b4941eec6183ee6c9388fdbe56432a885a28858ff4b8d754adde45"
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
