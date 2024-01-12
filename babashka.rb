class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.188"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.188/babashka-1.3.188-linux-amd64-static.tar.gz"
    sha256 "89431b0659e84a468da05ad78daf2982cbc8ea9e17f315fa2e51fecc78af7cc0"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.188/babashka-1.3.188-macos-aarch64.tar.gz"
      sha256 "77eb9ec502260fa94008e1e43edc5678fab8dc1a5082b7eb3d28ae594ea54e09"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.188/babashka-1.3.188-macos-amd64.tar.gz"
      sha256 "d8854833a052bb578360294d6975b85ed917b9f86da0068fb3c263f8cbcc9e15"
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
