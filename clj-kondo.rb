class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.05.22"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.05.22/clj-kondo-2024.05.22-linux-static-amd64.zip"
    sha256 "0ffeb5d8b725d70830cebec21f3e5f43827b22545c6c9ab8d7d244a536a73178"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.05.22/clj-kondo-2024.05.22-macos-aarch64.zip"
      sha256 "626de4ac070b9aea0a80829cf75c124261faed627833cc1eea3d9953e00b0e99"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.05.22/clj-kondo-2024.05.22-macos-amd64.zip"
      sha256 "c9b296ffa065f2eb418b176ede3bbac487b8b6fd5e8933c7db38d90f588ab4d1"
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
