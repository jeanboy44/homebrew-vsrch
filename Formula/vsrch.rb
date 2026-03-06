class Vsrch < Formula
  desc "Vector semantic retrieval CLI with local ONNX/Jina embeddings"
  homepage "https://github.com/jeanboy44/vsrch"
  license "Apache-2.0"
  version "v0.1.1"

  on_macos do
    url "https://github.com/jeanboy44/vsrch-release/releases/download/v0.1.1/vsrch-v0.1.1-macos-latest-20260307002850-70ad248.tar.gz"
    sha256 "35b4aef7224a543c5bb076673f15b8f6b0666a92953839dfdd1dd17235db8dc5"
  end

  on_linux do
    url "https://github.com/jeanboy44/vsrch-release/releases/download/v0.1.1/vsrch-v0.1.1-ubuntu-latest-20260307002843-70ad248.tar.gz"
    sha256 "c06292b66771557d2973b1bfc7f7792edcc28b1fa58bc2609ffb2e28ac32848a"
  end

  def install
    bin.install "bin/vsrch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/vsrch --help")
  end
end
