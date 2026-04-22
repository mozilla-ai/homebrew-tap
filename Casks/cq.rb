cask "cq" do
  version "0.5.1"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.1/cq_Darwin_x86_64.tar.gz"
      sha256 "b7560f586d1c71829bad12717367f0e69b4121084b57c5f7c3e0f0ed9b69da52"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.1/cq_Darwin_arm64.tar.gz"
      sha256 "3627ac6739e2c06d37a9bdeca3c0afd181455c39306b6a7774da3f0cf3fa66b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.1/cq_Linux_x86_64.tar.gz"
      sha256 "19061df482032cec60c45e51bc0e1f4b72da1f818a090fc21735ae4d1d84e0d5"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.5.1/cq_Linux_arm64.tar.gz"
      sha256 "4e657541418d58c394a56b6649b52b01ae1892f34f0b4a74ccf903e874d2451b"
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
