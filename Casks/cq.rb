cask "cq" do
  version "0.12.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.12.0/cq_Darwin_x86_64.tar.gz"
      sha256 "3adc51f8426ca834655eaeffbea778197b51c021b5ad0bd6913ed68943c972ee"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.12.0/cq_Darwin_arm64.tar.gz"
      sha256 "f595a33fc1a3e095680ef9521d7f768aa1827793b2a2e20b8cce318188679f0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.12.0/cq_Linux_x86_64.tar.gz"
      sha256 "6edad09df318cf364b15af2b4e1da9ec0f4c659ac6b9f4fa38972c7c1c034257"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.12.0/cq_Linux_arm64.tar.gz"
      sha256 "7c3c016e580a0ead1b32ac7de58742e00ffb2a20d953e7fbf1edb5faf324140c"
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
