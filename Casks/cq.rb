cask "cq" do
  version "0.19.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.0/cq_Darwin_x86_64.tar.gz"
      sha256 "120d798ba910dbb2538a1981aee5d7ed87358ac2de7402dca2bf0c701fa27979"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.0/cq_Darwin_arm64.tar.gz"
      sha256 "f97034b8dcff1680882c19422c60afb65fb5bfaee6ca6b6931f65d3bb96e88b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.0/cq_Linux_x86_64.tar.gz"
      sha256 "d76f387064ab60493f483cab6af2c4b4c7b4dd263a0e28c211524014351e2a7a"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.19.0/cq_Linux_arm64.tar.gz"
      sha256 "3c35de5655a2ed02b3306c5d47b440532acfc3fa80ca387a3b2ed264215111ce"
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
