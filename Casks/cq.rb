cask "cq" do
  version "0.10.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.10.0/cq_Darwin_x86_64.tar.gz"
      sha256 "a6cc61ae1738def999c0bdfc839d0d6c3fca4c4f0dda39bbae9418b73bc914a6"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.10.0/cq_Darwin_arm64.tar.gz"
      sha256 "dbf21e42fb8d50e97db870ae7f89bac9a3b268e55aba66e6384f0e260a33815f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.10.0/cq_Linux_x86_64.tar.gz"
      sha256 "9431c9d8448f599fe12f894db36403bb17171119f762cfb70df7a8edaadb88b7"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.10.0/cq_Linux_arm64.tar.gz"
      sha256 "51b05931ccfb8c3bc48d1c15dbdc5a6aa2a4183fbb91fc9b5f2153f9104fa91f"
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
