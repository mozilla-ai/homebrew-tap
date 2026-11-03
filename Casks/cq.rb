cask "cq" do
  version "0.19.1"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.1/cq_Darwin_x86_64.tar.gz"
      sha256 "5131929863ea76210d540649534977c44c77342a6f2161d273af93b6bd2438e8"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.1/cq_Darwin_arm64.tar.gz"
      sha256 "f2e845658fdff0751c0e307857f092136985c1bbbb048636a81647452628d18f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.1/cq_Linux_x86_64.tar.gz"
      sha256 "4d2ba095068a0712e88a1b95947d1d04c38531fa802614d6a4d0b235f5b0a0ea"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.1/cq_Linux_arm64.tar.gz"
      sha256 "c4848ad445d8b7d668f54f9b3cd6f635f1484b48578be041df7aa88cb90c6d30"
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
