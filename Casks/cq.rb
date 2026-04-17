cask "cq" do
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.4.0/cq_Darwin_x86_64.tar.gz"
      sha256 "054df1da8f0503d96dbb73ede581b4c19d64d8df98b74d3b4a19b2a16f85d7b8"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.4.0/cq_Darwin_arm64.tar.gz"
      sha256 "bf63cf860db0aaa37690f904c884c981af3799add21a71061de8634062e430f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.4.0/cq_Linux_x86_64.tar.gz"
      sha256 "ed78a7bb5bf7afc5bf647b76305237c71e18963fbb55c3e7bc95d1680aa08772"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.4.0/cq_Linux_arm64.tar.gz"
      sha256 "a7e9c78880e602c3e11d177997caa7640f257589d97c2fc770f8798712784948"
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
