cask "cq" do
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.1/cq_Darwin_x86_64.tar.gz"
      sha256 "3bc872a2e8c72fce308ea9c876a63f9e2c48e317668a1c99bc808f395a67b43f"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.1/cq_Darwin_arm64.tar.gz"
      sha256 "8b2daf5c45eaa79e2f0e4ae2313b2572fdb34444f367141fce09bd746fd672e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.1/cq_Linux_x86_64.tar.gz"
      sha256 "f328dca88a4a2a218c203a59d46ddfa716a64a10e3aef8cc462a11b6d2b9f73d"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.2.1/cq_Linux_arm64.tar.gz"
      sha256 "d1e89e39b570abfe3387c6f8aac2a8d1f7a8b4d009f42b04df23f1d263917e17"
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
