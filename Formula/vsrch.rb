class Vsrch < Formula
  desc "Vector semantic retrieval CLI with local ONNX/Jina embeddings"
  homepage "https://github.com/jeanboy44/vsrch"
  license "Apache-2.0"
  version "v0.1.1"

  on_macos do
    url "https://github.com/jeanboy44/vsrch/releases/download/v0.1.1/vsrch-v0.1.1-macos-latest-20260304203811-fe91143.tar.gz"
    sha256 "90a24d90b4a8e44a50764b659913dbd76e5cc9ee64073706efc4830cc925a1cc"
  end

  on_linux do
    url "https://github.com/jeanboy44/vsrch/releases/download/v0.1.1/vsrch-v0.1.1-ubuntu-latest-20260304203804-fe91143.tar.gz"
    sha256 "42dcaf3444d582ef050dea32d132a1947af824dbbbbce9f3f110adaaa5d58087"
  end

  def install
    bin.install "bin/vsrch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vsrch --help")
  end
end
