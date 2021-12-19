class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2021.12.19"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.12.19/clj-kondo-2021.12.19-linux-amd64.zip"
    sha256 "f7cfd692a3c045e4cb1062683c0bff2e1048f1422818c4c236207ae351dd088e"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2021.12.19/clj-kondo-2021.12.19-macos-amd64.zip"
    sha256 "7f555415f09e0deaea1e1259368a4e69f84a7d7987b5666cb50bacefa2c25a1f"
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
