cask "cq" do
  version "0.16.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.16.0/cq_Darwin_x86_64.tar.gz"
      sha256 "fad93c884bb09e24172e205cbf091a91ea0dc9dfe0e9ee76be0f6a6d3a200148"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.16.0/cq_Darwin_arm64.tar.gz"
      sha256 "2bf7cfaccaa6d59932d082be1d1fda5c7c609d6cf0f1207487f7bbf2909cb02c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.16.0/cq_Linux_x86_64.tar.gz"
      sha256 "d34303c642fcb15f573c5bcbb5950f391e866c9ce6d49dca479a2fd353b434dd"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.16.0/cq_Linux_arm64.tar.gz"
      sha256 "acdfc905c9158deb12d3505bf5d5031b0de4207cf21d95197a7985a8efedd7d0"
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
