class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.1.172"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.1.172/babashka-1.1.172-linux-amd64-static.tar.gz"
    sha256 "ac951002420df005cdb5b60890c51fb03b8938fe5a5c207dee0d6163210c5964"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.1.172/babashka-1.1.172-macos-aarch64.tar.gz"
      sha256 "0d4454f1415df2a2775980eda8691cb75f1146388acb3a38bfa62891361b53f0"
    else url "https://github.com/babashka/babashka/releases/download/v1.1.172/babashka-1.1.172-macos-amd64.tar.gz"
      sha256 "87ced82ba882cc41281b2698d72678d2233d017e4746a0f2540b70c535101b9b"
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
