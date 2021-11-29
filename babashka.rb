class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.6.6"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.6.6/babashka-0.6.6-linux-amd64.tar.gz"
    sha256 "5bdc67d7cf32397e6e6336756ad7696a57930d24a619e1e9bb3ba0bf82c0c5e9"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.6.6/babashka-0.6.6-macos-amd64.tar.gz"
    sha256 "3c6fb3a7b584c2010821de48e2ba0bfa98fd3dc91077571fbba8cd04d9dc88ee"
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
