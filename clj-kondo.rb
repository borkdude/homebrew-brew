class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.05.24"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.05.24/clj-kondo-2024.05.24-linux-static-amd64.zip"
    sha256 "1b996b1087909c9ef15d25e39b3ea1eb197f85c0759671cb26dbb05d7af07ff5"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.05.24/clj-kondo-2024.05.24-macos-aarch64.zip"
      sha256 "42d2707d652b8a5063e2bf36973916e0952948df9cb4177ff3c2a6ded9686ac3"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.05.24/clj-kondo-2024.05.24-macos-amd64.zip"
      sha256 "3d70c4dea5fa8d167ffea376983190ed8d12745cf4dff45a376cfc9b9b051725"
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
