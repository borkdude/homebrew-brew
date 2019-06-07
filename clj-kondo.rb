class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.06.07-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.07-alpha/clj-kondo-2019.06.07-alpha-linux-amd64.zip"
    sha256 "9c56ef726f8f9a18b3b18cef6ddc67b6669dc4eaa9cfcc3a9187e176b0fc97dc"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.07-alpha/clj-kondo-2019.06.07-alpha-macos-amd64.zip"
    sha256 "8e29494d68a8fc411e3e35605d41323be49a4b4de3f23ddda3648071613aed43"
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
