cask "cq" do
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.0/cq_Darwin_x86_64.tar.gz"
      sha256 "57f81b0e1daee1a85cf68993a230c6e5893ccc78c5ee59b4da1cff9493d6a451"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.0/cq_Darwin_arm64.tar.gz"
      sha256 "268d2e360bc76bf6ee944130b05f5a6143634750002b7c9ade2113df4c8d6ea0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.0/cq_Linux_x86_64.tar.gz"
      sha256 "0c270b4baf75fa233eb9d1ade580eecf1fe07062383bee319fe0fdba0e4af8a5"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.0/cq_Linux_arm64.tar.gz"
      sha256 "69ddda6260f5c780fdcaa4ee1d2986b8a08c28a29b757f2809ba86a71a461a2d"
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
