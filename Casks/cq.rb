cask "cq" do
  version "0.9.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.9.0/cq_Darwin_x86_64.tar.gz"
      sha256 "0b8b1dc884d5f1a34457347bd34ff5bcc6f77633a7dee59e54b2d3e30960566a"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.9.0/cq_Darwin_arm64.tar.gz"
      sha256 "d7a277fb2213e5891432ab9eab92f9cc15c6d9e1fdf66781c35ba40040870e0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.9.0/cq_Linux_x86_64.tar.gz"
      sha256 "5080b2d4e753781e761635cf29000d0864e6fa779507a6dcdc4e1814f570e67c"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.9.0/cq_Linux_arm64.tar.gz"
      sha256 "31eec12bd99a98af014f0ec39d9805b3a292b6bee3c087195012cb658b6b4fc5"
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
