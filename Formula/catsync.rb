# CatSync: parallel, resumable file-tree transfers over SSH.
#
# This tap installs the prebuilt archives published by CatSync's release
# workflow. Each tag ships one archive per platform plus a SHA256SUMS file, so
# the formula pins a checksum for every supported pair.
class Catsync < Formula
  desc "Parallel, resumable file tree copier over SSH"
  homepage "https://github.com/dotfrankruan/CatSync"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dotfrankruan/CatSync/releases/download/v0.1.0/catsync_v0.1.0_darwin_arm64.tar.gz"
      sha256 "616eaad23b8720c0088ee3249b3f9ca076b5184e9111a4421e72b075c6110077"
    end
    on_intel do
      url "https://github.com/dotfrankruan/CatSync/releases/download/v0.1.0/catsync_v0.1.0_darwin_amd64.tar.gz"
      sha256 "7df02f9335a95578f14eb4cdb4c1a9528395851b61d4c79f710ec54a09034ece"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dotfrankruan/CatSync/releases/download/v0.1.0/catsync_v0.1.0_linux_arm64.tar.gz"
      sha256 "7b760e95b4143a6fa6ebbe85b77c6a59642bc80fa3119496626baf41b19f5f86"
    end
    on_intel do
      url "https://github.com/dotfrankruan/CatSync/releases/download/v0.1.0/catsync_v0.1.0_linux_amd64.tar.gz"
      sha256 "7567beea5ed11e8acecdfe6df87da084fb6d97ea8228d82f2ae7414fe49e7f7b"
    end
  end

  def install
    bin.install "catsync"
    # Shell completion is not shipped yet; the binary documents its own usage.
  end

  test do
    assert_match "catsync 0.1.0", shell_output("#{bin}/catsync version")
  end
end
