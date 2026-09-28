class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.225"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.225/babashka-1.13.225-linux-aarch64-static.tar.gz"
      sha256 "7fd4ce2c6ac9975bfd6f20a42a49f5d6f95d8ac0b2c4d9336dc6afc67ad11ce2"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.225/babashka-1.13.225-linux-amd64.tar.gz"
      sha256 "fedc96dc5674eec3a4e345e73f7eb8627fe6cf1d257ba9ca4ab99f8a07c1f60b"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.225/babashka-1.13.225-macos-aarch64.tar.gz"
      sha256 "a404b143e7df3f7347c3fbef245185bcc3bd4ef05b46a3da80e2a36d38e1e35f"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.225/babashka-1.13.225-macos-amd64.tar.gz"
      sha256 "4f8171b62e992228e16cd22e0a5b72c92283c2fe15df072d307780a1af2fae1c"
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
