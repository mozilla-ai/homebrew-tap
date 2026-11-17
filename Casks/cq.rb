cask "cq" do
  version "0.20.1"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.1/cq_Darwin_x86_64.tar.gz"
      sha256 "466db572e18d681f7f6b8116bb70251583e45fb2c1a35ff259da81ec7c05fd2e"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.1/cq_Darwin_arm64.tar.gz"
      sha256 "1e35bf768a0b429c654b28c7f5d6ab247cc786ba72d62b145696dec53a6289cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.1/cq_Linux_x86_64.tar.gz"
      sha256 "2fe723fa3f07a3575c9f3c6df6e58a883483d41d740f05ba95b0b50441b29efd"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.1/cq_Linux_arm64.tar.gz"
      sha256 "bb75b74b0bf802e89a8586294b25d0890f6e75ba1d91ef02fcfb9fbd3aa68e92"
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
