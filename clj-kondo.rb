class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.05.02"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.05.02/clj-kondo-2020.05.02-linux-amd64.zip"
    sha256 "4a03ce91245c1d706d0bd152f15b2113233ded07c9775dcbe6a884855a98c075"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.05.02/clj-kondo-2020.05.02-macos-amd64.zip"
    sha256 "0c931632b9a830a395bf53664765b8449e56cbd194cbd8f7fdc553f575ff9cdc"
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
