class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.189"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.189/babashka-1.3.189-linux-amd64-static.tar.gz"
    sha256 "228e8ccee724ba8d66c66d8672161b991bb00b00e538e7aecd0b902330e5a712"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.189/babashka-1.3.189-macos-aarch64.tar.gz"
      sha256 "1c4a534decaa7afdb58d182b7df1a73c8999a580851af3080fb5609ac87a5f3f"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.189/babashka-1.3.189-macos-amd64.tar.gz"
      sha256 "c0d4161034605820656b5d5c6944540e7a9d5d16c3dd53d742646a706ec62789"
    end
  end

  def install
    bin.install "bb"

    # maybe in a future release:
    #   bin.install "bbk"
  end

  test do
    assert_equal "hello\n",
                 pipe_output("#{bin}/bb -e '(println \"hello\")'")
  end
end
