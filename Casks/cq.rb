cask "cq" do
  version "0.18.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.18.0/cq_Darwin_x86_64.tar.gz"
      sha256 "8c25bbe46f7f14d5d618ac7830a2065b36270a98036391e076d56695b710365b"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.18.0/cq_Darwin_arm64.tar.gz"
      sha256 "865dc6d33a71328b27cd25c165d09b07edab5959bdc01f82b8e151bcfae97a66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.18.0/cq_Linux_x86_64.tar.gz"
      sha256 "27787adbe5ac2ab8daab833033f1c37ea3b0e8fa3b8a8b39db15e9a2aba3dc2c"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.18.0/cq_Linux_arm64.tar.gz"
      sha256 "bcff3c53a0307adf402a3526658fbdd300c4277f6f98fe10753fe169db60c85f"
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
