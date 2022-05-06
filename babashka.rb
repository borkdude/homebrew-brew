class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.8.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.8.2/babashka-0.8.2-linux-amd64.tar.gz"
    sha256 "8ebc5055557878f199d2d5346ae91d28341ee5da9c647bb3e95b394b1344df67"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.8.2/babashka-0.8.2-macos-amd64.tar.gz"
    sha256 "f10adb26ab68a364f8d5811b2c01c197baa10d8682e726d185a320be8b534497"
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
