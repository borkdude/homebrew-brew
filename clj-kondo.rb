class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.01.10"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.01.10/clj-kondo-2020.01.10-linux-amd64.zip"
    sha256 "c8f6555315dc234ed40b8e1be6ea4e231a62977aa7a75702cd27517fbe01512c"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.01.10/clj-kondo-2020.01.10-macos-amd64.zip"
    sha256 "cfb31e5dffed1fc2c90b906124c99eeefcb66b25cdd85ac3aad911dd3cf9a787"
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
