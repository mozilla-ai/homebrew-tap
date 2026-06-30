cask "cq" do
  version "0.15.1"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.1/cq_Darwin_x86_64.tar.gz"
      sha256 "004d24fe6cfcb9910adfd336424599e720e3263fa6b94bb7d19cc8588b74cdb1"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.1/cq_Darwin_arm64.tar.gz"
      sha256 "b634a441b0119e5b6de660f219b910eff338f548468fe511b1af282380656858"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.1/cq_Linux_x86_64.tar.gz"
      sha256 "4030583b3399f406e2d790b936a644338a877dc7512c489069167ebfa3fab372"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.1/cq_Linux_arm64.tar.gz"
      sha256 "75e6eba41c1d6286f2a23efaf0de84d701179ff2dd435232388fea5fa64a9ca0"
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
