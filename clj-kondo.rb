class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.05.28"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.28/clj-kondo-2022.05.28-linux-amd64.zip"
    sha256 "57a77ca07ad7a164da5be35d6c7adcbbb4fa94a74ee296e9e82cec4b4f4ef330"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.05.28/clj-kondo-2022.05.28-macos-amd64.zip"
    sha256 "4994e528f71a4d705869110a889dd068bac9559bc80cab17d9084288ca8f6377"
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
