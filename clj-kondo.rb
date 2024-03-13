class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2024.03.13"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2024.03.13/clj-kondo-2024.03.13-linux-static-amd64.zip"
    sha256 "e14f152c18bc210bac55c39fd346a816df81ad65db3e5e4b333970d23989e8b0"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.03.13/clj-kondo-2024.03.13-macos-aarch64.zip"
      sha256 "40a2c4aa896568e27f75b6268f72a5510e7121b2907f0515d7466d4d3b598bae"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2024.03.13/clj-kondo-2024.03.13-macos-amd64.zip"
      sha256 "c5597173de86d60c4e3404e41fc003ed04e2f6d73c742b99b902e3fec7e965df"
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
