cask "cq" do
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.7.0/cq_Darwin_x86_64.tar.gz"
      sha256 "df26b9a6f8fbd2b68106effee96a0fece0d36f41621b09aa8a40c4ea943e9691"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.7.0/cq_Darwin_arm64.tar.gz"
      sha256 "74a24ad354d68939cb74f949470fc79eb920e46968728deb64235ce56fa74451"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.7.0/cq_Linux_x86_64.tar.gz"
      sha256 "a55dfe8d193fb360de4b9a97299b973b46b445ceba79365e49a5c1299b95a2ce"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.7.0/cq_Linux_arm64.tar.gz"
      sha256 "7c8e633d580b6546f557a251a6503dc7518183d77e2c8f97fc0a943181cdc000"
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
