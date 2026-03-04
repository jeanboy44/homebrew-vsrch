class Vsrch < Formula
  desc "Vector semantic retrieval CLI with local ONNX/Jina embeddings"
  homepage "https://github.com/jeanboy44/vsrch"
  license "Apache-2.0"
  version "v0.1.1"

  on_macos do
    url "https://github.com/jeanboy44/vsrch/releases/download/v0.1.1/vsrch-v0.1.1-macos-latest-20260304220721-3b1aad1.tar.gz"
    sha256 "245aa9c9ed14cb8c203d35f2acf5a4aee35bc7bcc583753c9122cd5441aa0902"
  end

  on_linux do
    url "https://github.com/jeanboy44/vsrch/releases/download/v0.1.1/vsrch-v0.1.1-ubuntu-latest-20260304220729-3b1aad1.tar.gz"
    sha256 "c9b0d5b513bed8fae63c9abf3214b6942b909a2a188c97edc63b68929089a73b"
  end

  def install
    bin.install "bin/vsrch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vsrch --help")
  end
end
