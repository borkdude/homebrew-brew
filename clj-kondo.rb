class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.12.01"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.12.01/clj-kondo-2021.12.01-linux-amd64.zip"
    sha256 "a7e6d5b99441aa3d8e00ae94ef429021b61f2e6f3de00133d1ab599bfa58d01e"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.12.01/clj-kondo-2021.12.01-macos-amd64.zip"
    sha256 "58835b1860cbe99bbe08cfef868d9046545b88cff33e91839cb8c9a654846412"
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
