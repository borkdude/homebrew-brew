class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.06.21"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.06.21/clj-kondo-2020.06.21-linux-amd64.zip"
    sha256 "6154083efe5b4b9c3d13b38e6b68652b7788274bbe05438215d6fd141d701b9a"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.06.21/clj-kondo-2020.06.21-macos-amd64.zip"
    sha256 "960eb7b8215ffcf6edbbc9a4cf64c9c130ab6bc7cb1f9a122db7555aabba3315"
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
