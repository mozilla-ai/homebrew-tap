cask "cq" do
  version "0.20.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.0/cq_Darwin_x86_64.tar.gz"
      sha256 "de70d19e1b41a324886541217e2c9bc789a8e3d78a43377df0ab5b07a4c45726"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.0/cq_Darwin_arm64.tar.gz"
      sha256 "806f1e6d84253caae10531ad5b926d345d25f4a747c74c3ccc13ce8be9370931"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.0/cq_Linux_x86_64.tar.gz"
      sha256 "959c9f09d79b7856926d363999e55cfa6769807989e12a6ccef8dee1c06c574b"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.20.0/cq_Linux_arm64.tar.gz"
      sha256 "596e2ba3ffcdc34e7661e2d78ba99d4c1087657af4554c94e703a07ef321e341"
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
