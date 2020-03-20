class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2020.03.20"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.03.20/clj-kondo-2020.03.20-linux-amd64.zip"
    sha256 "80317d3c344a4ddca8f264273a79fa4d19a1cc7fc30c47bb7b1c2dc090896048"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2020.03.20/clj-kondo-2020.03.20-macos-amd64.zip"
    sha256 "b31b33e8c8c8e577f698a39be11e3c5c73c570990d207ac7a39f7d79d011aa5f"
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
