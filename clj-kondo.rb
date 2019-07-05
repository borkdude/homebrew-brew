class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.07.05-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.05-alpha/clj-kondo-2019.07.05-alpha-linux-amd64.zip"
    sha256 "2ae04dcada9c16bdd8c6ff9858961a1aebf2d907bf87fa6d69988ac4a81dfcd6"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.07.05-alpha/clj-kondo-2019.07.05-alpha-macos-amd64.zip"
    sha256 "3e12b93a074e26d4c456de1f6f65db3dec18d27987e7aa505f817892fe17a380"
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
