class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2025.07.26"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2025.07.26/clj-kondo-2025.07.26-linux-static-amd64.zip"
    sha256 "5827b360522202d23b8493d7d3eb1929780348083615680571dc839649bf2e3a"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.07.26/clj-kondo-2025.07.26-macos-aarch64.zip"
      sha256 "d2fd8b05b6bdff71d295e5766a43d00d512a28cc38385635fc3acec9ccee4827"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2025.07.26/clj-kondo-2025.07.26-macos-amd64.zip"
      sha256 "6a2f0f82b77b4386854e07a72b8e9084d62e9f52ab43769449da6ff48d002007"
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
