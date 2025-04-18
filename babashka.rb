class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.199"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.199/babashka-1.12.199-linux-amd64-static.tar.gz"
    sha256 "8e5bd193de1ed941b244048a467dc5e9e034a8f9178a6d4e0cf6f1da53de7fc3"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.199/babashka-1.12.199-macos-aarch64.tar.gz"
      sha256 "9b3966d0487adc1e3db278780799ba3036728955dd2dae83825336d5d8584c5a"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.199/babashka-1.12.199-macos-amd64.tar.gz"
      sha256 "7761d66abea0eb1f4a13c48b15d1b191d7215d8af540e056c2f6c31ad97e6d7e"
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
