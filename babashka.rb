class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.183"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.183/babashka-1.3.183-linux-amd64-static.tar.gz"
    sha256 "cf9338048b4dddac8b2c8f93ac03d51a6559ccc8d7956add136c6a234153f0a8"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.183/babashka-1.3.183-macos-aarch64.tar.gz"
      sha256 "84de3b4352e59937ad6bfef7a95575f6bd34638d0cae51366ca0cf7550209074"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.183/babashka-1.3.183-macos-amd64.tar.gz"
      sha256 "eb9cfab70c731bc7834f28e01c5b03e530b78ab0314af85823646e46b0124967"
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
