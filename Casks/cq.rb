cask "cq" do
  version "0.15.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.0/cq_Darwin_x86_64.tar.gz"
      sha256 "11860aa822f424992bef1e8724aa7917dc88517db7cd505c714ba76a6fcfbf5f"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.0/cq_Darwin_arm64.tar.gz"
      sha256 "8e9bcb57156d925a5f66e055ab0bfd18003b0f9781b345996ccb7e5dd7d14f67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.0/cq_Linux_x86_64.tar.gz"
      sha256 "c65602fdb961bb4f6e1e38468b6ac079a624ee10b0823f8055e5531ebc6e0c1d"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.15.0/cq_Linux_arm64.tar.gz"
      sha256 "ce0091ff18aac5badb0b402b5eb8c675b51dfcf102a16022b1deb9e41c0fd74c"
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
