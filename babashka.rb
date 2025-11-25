class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.212"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.212/babashka-1.12.212-linux-aarch64-static.tar.gz"
      sha256 "c34d0496e4f466c1b7b94890ba453f3f87248def1033dd590e2853c535a759bf"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.212/babashka-1.12.212-linux-amd64-static.tar.gz"
      sha256 "1478fccffc08b1d9b8a70eedee61ec9593d8878d5e7b27a61d48f19fc5574e19"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.212/babashka-1.12.212-macos-aarch64.tar.gz"
      sha256 "28791c66ae1fa52cf3d6eee235027c2bfc93686b3c97725434913e4ba64bd3a8"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.212/babashka-1.12.212-macos-amd64.tar.gz"
      sha256 "9eabd566afb0c0cdb225a7cee9b886605b5ce18f612d297ccf898457ec9e573f"
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
