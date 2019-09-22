class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.09.22-alpha"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.09.22-alpha/clj-kondo-2019.09.22-alpha-linux-amd64.zip"
    sha256 "748e1a5680d20ed72c79d5a8b7c4117d0c64f28cb00c4b7097428f580f3bc560"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.09.22-alpha/clj-kondo-2019.09.22-alpha-macos-amd64.zip"
    sha256 "3ab93d8f2be4691f268b6d4fd1c64117a7596c68f93a91adac7c22da01ef55f2"
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
