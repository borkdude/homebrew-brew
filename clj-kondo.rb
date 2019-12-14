class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2019.12.14"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.12.14/clj-kondo-2019.12.14-linux-amd64.zip"
    sha256 "7281b482ab459a62263950ec7d302593f0a0d7f142f03110b7df54809eaddcd3"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2019.12.14/clj-kondo-2019.12.14-macos-amd64.zip"
    sha256 "3db0bad7d44e3e38a99a111d06dbd153f4f75533159442b1a6a67c54c637aebb"
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
