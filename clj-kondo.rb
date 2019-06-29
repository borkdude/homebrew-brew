class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.06.29-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.29-alpha/clj-kondo-2019.06.29-alpha-linux-amd64.zip"
    sha256 "c4b008a93d5125e3aa4a77a2edea55a0feb9e153ff5be4161459f16a3a974842"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.29-alpha/clj-kondo-2019.06.29-alpha-macos-amd64.zip"
    sha256 "f47a37873e266a0f632cffa18d48ff8eb105718a98e2849565833e77bb4a8084"
  end

  bottle :unneeded

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
