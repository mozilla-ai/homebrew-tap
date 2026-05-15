class LlamafileBuilder < Formula
  desc "Assemble single-file llamafile executables (CLI + HTTP server + JSON-RPC)"
  homepage "https://github.com/mozilla-ai/llamafile-builder"
  version "0.1.2"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mozilla-ai/llamafile-builder/releases/download/v0.1.2/llamafile-builder-aarch64-apple-darwin.tar.xz"
      sha256 "ca5a55cf774652d063d60b3762140844269a01723bb7d04d82e41ed59b37ac52"
    end
    if Hardware::CPU.intel?
      url "https://github.com/mozilla-ai/llamafile-builder/releases/download/v0.1.2/llamafile-builder-x86_64-apple-darwin.tar.xz"
      sha256 "fa2a806508a8c3701be7471a3ad5779ae3494ee10b37d1c9ab2977d0182ac5e5"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/mozilla-ai/llamafile-builder/releases/download/v0.1.2/llamafile-builder-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "aeffd38f0bf651d8a60d0b15565a5fea0cea31aa03acdf513b47f8254466532f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/mozilla-ai/llamafile-builder/releases/download/v0.1.2/llamafile-builder-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8bcedb8129f4c588e26d50391bd31f37aa42f90c3f72939feddede9e19d692b8"
    end
  end
  license "Apache-2.0"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":      {},
    "aarch64-unknown-linux-gnu": {},
    "x86_64-apple-darwin":       {},
    "x86_64-pc-windows-gnu":     {},
    "x86_64-unknown-linux-gnu":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "llamafile-builder" if OS.mac? && Hardware::CPU.arm?
    bin.install "llamafile-builder" if OS.mac? && Hardware::CPU.intel?
    bin.install "llamafile-builder" if OS.linux? && Hardware::CPU.arm?
    bin.install "llamafile-builder" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
