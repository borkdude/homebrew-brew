class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.06.01-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.01-alpha/clj-kondo-2019.06.01-alpha-linux-amd64.zip"
    sha256 "a99e0ea9de84e201f029b0ee787c451be6e6b8648a84f309924b62eff060b8ff"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.06.01-alpha/clj-kondo-2019.06.01-alpha-macos-amd64.zip"
    sha256 "4691cc355282726873baa1f997e99e116eb09a3e6af46607f7e4f8ecf7cf9afd"
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
