class Vsrch < Formula
  desc "Vector semantic retrieval CLI with local ONNX/Jina embeddings"
  homepage "https://github.com/jeanboy44/vsrch"
  license "Apache-2.0"
  version "v0.1.1"

  on_macos do
    url "https://github.com/jeanboy44/vsrch/releases/download/v0.1.1/vsrch-v0.1.1-macos-latest-20260304222931-3b1aad1.tar.gz"
    sha256 "a457e5bbef4ceca011dde95316c16f6cf06e929a20a7f60471c6d9516b828da4"
  end

  on_linux do
    url "https://github.com/jeanboy44/vsrch/releases/download/v0.1.1/vsrch-v0.1.1-ubuntu-latest-20260304222939-3b1aad1.tar.gz"
    sha256 "8004676800e0ecba14a0b42da3632ac836a71b662839171ee7bae8e1b42dfbb6"
  end

  def install
    bin.install "bin/vsrch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vsrch --help")
  end
end
