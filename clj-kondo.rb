class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2023.09.07"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2023.09.07/clj-kondo-2023.09.07-linux-static-amd64.zip"
    sha256 "3f33fe3f55e29ff885f4d68a231d95ac43e9e9cc65ca148dbe5931f4c1d6c45e"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.09.07/clj-kondo-2023.09.07-macos-aarch64.zip"
      sha256 "9039f30ebab4244681fc3b6b5511734378fccfc374dfc1bc6b9e88a39d7a2422"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2023.09.07/clj-kondo-2023.09.07-macos-amd64.zip"
      sha256 "105bf29ea1dc4b252a393b8f023b59d40537949f59eb07ee7c7213310451ef6e"
    end
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
