class Babashka < Formula
  desc "Clojure babushka for the grey areas of Bash"
  homepage "https://github.com/borkdude/babashka"
  version "0.7.0"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.7.0/babashka-0.7.0-linux-amd64.tar.gz"
    sha256 "963d557941aef1384fdb644c45e75fda71a6ca8acb850b5c3bef1a30cc549a16"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.7.0/babashka-0.7.0-macos-amd64.tar.gz"
    sha256 "1d1e5b487e94a34c036596186717076a9e9fb373e9d015be1cec95d8e2fba112"
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
