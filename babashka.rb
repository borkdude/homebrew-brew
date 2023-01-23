class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.1.171"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.1.171/babashka-1.1.171-linux-amd64-static.tar.gz"
    sha256 "18c856a2ce561576161b2ad01b395f30d0ed5d1b04fa155fa8d7b057674f20e5"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.1.171/babashka-1.1.171-macos-aarch64.tar.gz"
      sha256 "baddb48c64278b8c0e6f78d9b2da56e723f53107da2236f00e11a8b7bfd9f22f"
    else url "https://github.com/babashka/babashka/releases/download/v1.1.171/babashka-1.1.171-macos-amd64.tar.gz"
      sha256 "b749eaff34e051927bffba9af83c75b19e0a0c6fa3e0578a52d8eb736fc3474b"
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
