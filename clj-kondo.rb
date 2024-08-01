class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.08.01"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.08.01/clj-kondo-2024.08.01-linux-static-amd64.zip"
    sha256 "1b60c6ca0fb654fdea1d63384ce63ae33d2759101408a7b8224da689375dd778"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.08.01/clj-kondo-2024.08.01-macos-aarch64.zip"
      sha256 "982cf01fff184341cacbf3a40fb2422cb6c88cbf363073e061ef145714b95eb8"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.08.01/clj-kondo-2024.08.01-macos-amd64.zip"
      sha256 "49db91e946e4a6f31b478dc4c53ef861f516ebe671ba0ccddab847c2da5f2d03"
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
