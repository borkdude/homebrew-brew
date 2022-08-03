class CljKondo < Formula

  desc "A minimal and opinionated linter for Clojure code that sparks joy."
  homepage "https://github.com/borkdude/clj-kondo"
  version "2022.08.03"

  if OS.linux?
    url "https://github.com/borkdude/clj-kondo/releases/download/v2022.08.03/clj-kondo-2022.08.03-linux-amd64.zip"
    sha256 "304c411c18005edb8c4efd30f603752440941318a915b3a8d4771e04419b433b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.08.03/clj-kondo-2022.08.03-macos-aarch64.zip"
      sha256 "d9ad5227fc476bbf945807f749daa1797140cc7dadcf9836b4a2579fd0a39d24"
    else
      url "https://github.com/borkdude/clj-kondo/releases/download/v2022.08.03/clj-kondo-2022.08.03-macos-amd64.zip"
      sha256 "17fc7c8aa0ff76861f660bf0d651a29f89491480b86e9f0d5db3a493dacfeccb"
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
