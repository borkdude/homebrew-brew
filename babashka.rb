class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.177"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.177/babashka-1.3.177-linux-amd64-static.tar.gz"
    sha256 "04d48a666240b2e413647e0b560c0167a5aceb581ddcae4e1c4eab86342c555b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.177/babashka-1.3.177-macos-aarch64.tar.gz"
      sha256 "2b16382540019182495b1ad8f00fe5904749f240789fc077d5d2adf581874d93"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.177/babashka-1.3.177-macos-amd64.tar.gz"
      sha256 "418d9da6147baff30e58aec8bf08a44b001820f333d126cf743ce1db986faaca"
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
