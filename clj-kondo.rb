class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.04.25-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.25-alpha/clj-kondo-2019.04.25-alpha-linux-amd64.tar.gz"
    sha256 "3e1a90d2468854b0a522b9e90869604d20a283b0abad823328510b7ab281cfb3"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.25-alpha/clj-kondo-2019.04.25-alpha-macos-amd64.tar.gz"
    sha256 "2e8e00a6753bcbd141cd6ce7e34836410496ce1c1022c8f4d36bc18655ffaf80"
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
