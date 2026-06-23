cask "cq" do
  version "0.14.0"

  on_macos do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.14.0/cq_Darwin_x86_64.tar.gz"
      sha256 "172cceeea1d8f474c558edbfcb8468d8c2908c09d4aa430078095fed86718a4f"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.14.0/cq_Darwin_arm64.tar.gz"
      sha256 "c6096e11df08bc0557eae8b46064af14ae3a1063a64f4f8d2581aa6700e05dc7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.14.0/cq_Linux_x86_64.tar.gz"
      sha256 "8881d6ba91aa04efc493a6f6c97701961a03d429c78b97e29d45e91db445b286"
    end
    on_arm do
      url "https://github.com/mozilla-ai/cq/releases/download/cli/v0.14.0/cq_Linux_arm64.tar.gz"
      sha256 "1bb332fc31a85a8dc190f539c8d1f8475a045bb5ea465311716a34a672a3653b"
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
