class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.10.14"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.10.14/clj-kondo-2022.10.14-linux-amd64.zip"
    sha256 "1fead3bd0763f83357fb0d5b7a5b9590ec6e10522c5d9176c5a405412142b907"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.10.14/clj-kondo-2022.10.14-macos-aarch64.zip"
      sha256 "6a92def6eb11b241867453f86adde2655d7fed99759fe0b1485629cf718d1ff7"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.10.14/clj-kondo-2022.10.14-macos-amd64.zip"
      sha256 "a0a24250612c96b38b540bf188ce8271dd901d582309a5e1b7db5bca62b50704"
    end
  end

  def install
    bin.install "clj-kondo"
  end

  test do
    testfile = testpath/"test.clj"
    testfile.write "(defn foo [x] x) (foo 1 2 3)"
    assert_match "Wrong number of args (3) passed to user/foo",
                 shell_output("#{bin}/clj-kondo --lint #{testfile} 2>&1")
  end
end
