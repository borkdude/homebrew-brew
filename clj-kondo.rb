class CljKondo < Formula
  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.04.04-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.04-alpha/clj-kondo-2019.04.04-alpha-linux-amd64.tar.gz"
    sha256 "8e50e6e4558eea45590cea25beed9d4cc9a3aabbdae4d7f6da9ff4f5d5e38ab7"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.04.04-alpha/clj-kondo-2019.04.04-alpha-macos-amd64.tar.gz"
    sha256 "eda772406ed3f9ceb1252cd9e343d9470c099b48a2449066636842ee72ffaf19"
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
