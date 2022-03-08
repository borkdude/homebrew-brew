class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.03.09"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.03.09/clj-kondo-2022.03.09-linux-amd64.zip"
    sha256 "61691db0049eff96649774c65a0d93efdaafb7f316cb1d1db6e62beac201e853"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.03.09/clj-kondo-2022.03.09-macos-amd64.zip"
    sha256 "a9c53fb69f6e8a24901ab6238b18e51d0fe216734ebfde66a8f42765325f7417"
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
