cask "cq" do
  version "0.17.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.17.0/cq_Darwin_x86_64.tar.gz"
      sha256 "e7b11a2716a8f76f8c94f54776f8851f4f034a7a9371bc49c7b233fdc96ed8e4"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.17.0/cq_Darwin_arm64.tar.gz"
      sha256 "e96f56e6773df16e17dfbe36a8668ed346afa680d1c32bb26efb1c79a2918701"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.17.0/cq_Linux_x86_64.tar.gz"
      sha256 "b58c187936449ec7143803c279651c65c1cc146b5af2940cabd40da906691f18"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.17.0/cq_Linux_arm64.tar.gz"
      sha256 "64e28f85edf661bb0e7e5ba85045d57cdc6c264da56902972549abeace1ef57a"
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
