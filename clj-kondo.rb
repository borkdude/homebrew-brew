class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.10.04-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.10.04-alpha/clj-kondo-2019.10.04-alpha-linux-amd64.zip"
    sha256 "fcec28b80d03f0f0158ce855ac7e1f265acae9e54b7ab91b2144f81c36cf86de"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.10.04-alpha/clj-kondo-2019.10.04-alpha-macos-amd64.zip"
    sha256 "8df934bab043c237dab2da9d0bdbcb766871fcec04cd4e65e126a19a6a0801df"
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
