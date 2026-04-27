cask "cq" do
  version "0.6.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.6.0/cq_Darwin_x86_64.tar.gz"
      sha256 "6dd2ddced2c739349f38d57f31f932184b34b9f43dcf21b1824a861040579c5f"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.6.0/cq_Darwin_arm64.tar.gz"
      sha256 "317869fd7e81e26f3a75e4c46c1a9ddff518757c6b4092ec2d21577b17e54566"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.6.0/cq_Linux_x86_64.tar.gz"
      sha256 "d73f714bfd9211fcf1d57f8be06bd79a98a092cf59cbf2fb98bd7f9775204a6a"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.6.0/cq_Linux_arm64.tar.gz"
      sha256 "429375d8f358fe706a67329d3aec642ec30db872d6b7e5ffa881b7fbfc22ba40"
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
