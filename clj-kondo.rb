class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.01.13"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.01.13/clj-kondo-2022.01.13-linux-amd64.zip"
    sha256 "c507c84a2bd78f3bd5f6bc26fc51e833c309b168c1f7d2a61d1fcdc3074811e2"
  else
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.01.13/clj-kondo-2022.01.13-macos-amd64.zip"
    sha256 "4a1ad80c103379c5f4ce0a10b71fea5aa8f970e5a32567c7e3b8c1a52261e86f"
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
