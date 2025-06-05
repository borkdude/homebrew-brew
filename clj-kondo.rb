class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.06.05"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.06.05/clj-kondo-2025.06.05-linux-static-amd64.zip"
    sha256 "cb1815afe77606de3c7d423ace6cf4e2043564062143cb2cbfc8e1a81c587cf3"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.06.05/clj-kondo-2025.06.05-macos-aarch64.zip"
      sha256 "174d05387834f1c109e6348b01a105103d649231b59ecd03e877995ae23f63c3"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.06.05/clj-kondo-2025.06.05-macos-amd64.zip"
      sha256 "e3651c464044923457a5d5b23376121562fb560cb2e57f1b27ff2d7dc51212d3"
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
