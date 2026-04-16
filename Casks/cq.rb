cask "cq" do
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.3.0/cq_Darwin_x86_64.tar.gz"
      sha256 "0f1fd0fbdaf8c82ab33995eec3a5ea5ea177d59bdd5f8ec3a9a69a2b64f2df0a"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.3.0/cq_Darwin_arm64.tar.gz"
      sha256 "1210c03416f830f80263223f02be551822440a46e92e31fdba2640d8c791e4b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.3.0/cq_Linux_x86_64.tar.gz"
      sha256 "7554ca95cc59b4f79335f5129d62ac231a80e54c4c1aaba8b872b5c705736420"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.3.0/cq_Linux_arm64.tar.gz"
      sha256 "03d661db098c148df825ee48829bd8850ab45830cea404530c5b2998fc55d090"
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
