cask "cq" do
  version "0.8.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.8.0/cq_Darwin_x86_64.tar.gz"
      sha256 "ff60ea341348f954211c4c39f34f4e395d775904e6bf3bcbd06624fcd6690b35"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.8.0/cq_Darwin_arm64.tar.gz"
      sha256 "174fd60d16c98ce9df734f07d37ef669b0d0a5f6a38259f35ecbe39366a753ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.8.0/cq_Linux_x86_64.tar.gz"
      sha256 "25060a4e49b9aa2d3e21dd5c2a9a1b8bfaa5534aa5d4c5f3d56114d4b879ccf8"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.8.0/cq_Linux_arm64.tar.gz"
      sha256 "3607ec8157b28e730fc55e0a0fbf5f804bdd9145071d3a7ec3a7dc8e63b2f1ec"
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
