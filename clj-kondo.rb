class CljKondo < Formula
  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.03.29-alpha2"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.03.29-alpha2/clj-kondo-2019.03.29-alpha2-linux-amd64.tar.gz"
    sha256 "b5cea530bc288671f7ce6d3635f28b4b52c165703c5bc3e779e8690458f2c4c5"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.03.29-alpha2/clj-kondo-2019.03.29-alpha2-macos-amd64.tar.gz"
    sha256 "7b63625700e8b9329a741ae55152dbfb29e9778bfefddc9169d8a48305ff9cfb"
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
