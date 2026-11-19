class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.230"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.230/babashka-1.13.230-linux-aarch64-static.tar.gz"
      sha256 "d3935b08e8e2e81d1dd56be0ad72715cf1ebcd01cae6f8a6c909b5e4faa23884"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.230/babashka-1.13.230-linux-amd64.tar.gz"
      sha256 "590a131ec3456c2313ebcb5ae2ee6836ca1f01f481da08320cd8c8f46d3644f9"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.230/babashka-1.13.230-macos-aarch64.tar.gz"
      sha256 "3adcd97eeb3ebe324cf3a0be6d969a5626a14783596d3cad911b2f4b95809cea"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.230/babashka-1.13.230-macos-amd64.tar.gz"
      sha256 "b4b6b4e78f90a507fb660e0ed2d3e65bdab68ba20ad0151330f48fa32c4c1f49"
    end
  end

  def install
    bin.install "bb"

    # maybe in a future release:
    #   bin.install "bbk"
  end

  test do
    assert_equal "hello\n",
                 pipe_output("#{bin}/bb -e '(println \"hello\")'")
  end
end
