class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.05.26"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.05.26/clj-kondo-2023.05.26-linux-static-amd64.zip"
    sha256 "03bcc4e2cc9269dc62a8988b441b9f6b6e3b9d245cae79fe469c66a4a2264c10"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.05.26/clj-kondo-2023.05.26-macos-aarch64.zip"
      sha256 "65e61e24c58c9348c41ab4eb9a491874dcf834a2249e69ddcfdc65e119680ab4"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.05.26/clj-kondo-2023.05.26-macos-amd64.zip"
      sha256 "aa514e18922c89471e55747107e0d152fe14225dfc973bcc92e5ac1f862e3729"
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
