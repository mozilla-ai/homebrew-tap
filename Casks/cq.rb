cask "cq" do
  version "0.13.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.13.0/cq_Darwin_x86_64.tar.gz"
      sha256 "b2040e1f39bde7c4feb6b0de51ad505977e3f320e6772965f654ac3a78d39b75"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.13.0/cq_Darwin_arm64.tar.gz"
      sha256 "af5048a3ec1a9fd104fdb6f39b413b9ad9122267581b25fb1ee7a8d1a21e1ae8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.13.0/cq_Linux_x86_64.tar.gz"
      sha256 "49a3897c8ce0a213a3de889395a283b3ce4485d6f3a82af5d036c28a00236276"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.13.0/cq_Linux_arm64.tar.gz"
      sha256 "c35b053f70e0923d04977a483f0e78db3709eec8da5652d7fb7980c989a08fbe"
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
