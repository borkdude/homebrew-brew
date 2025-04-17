class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.198"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.198/babashka-1.12.198-linux-amd64-static.tar.gz"
    sha256 "950b8d14c430e893360cce478b9b60ad7dca7e9a4b0e07c50777dfa16d2f58af"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.198/babashka-1.12.198-macos-aarch64.tar.gz"
      sha256 "4c7f829ff26a7ef0a21dbf439b0201c7baff291bf73a1d5dd9c9c3d810f7ed8b"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.198/babashka-1.12.198-macos-amd64.tar.gz"
      sha256 "a27e7d3764ced75eb086f1ed35259e9a7118121d381bf6ebf16acd643c7f7918"
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
