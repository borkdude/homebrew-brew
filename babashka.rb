class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "0.8.157"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.8.157/babashka-0.8.157-linux-amd64.tar.gz"
    sha256 "55826f5c8078dd3306408221ae975173ae2f01c5128fbb50041533bce5e8ee89"
  else
    if Hardware::CPU.arm?
      url "https://github.com/borkdude/babashka/releases/download/v0.8.157/babashka-0.8.157-macos-aarch64.tar.gz"
      sha256 "040c3edcd12c081fa4022f32e962dfeeaf58c7e57ae4e208d75f950f2c52f2df"
    else url "https://github.com/borkdude/babashka/releases/download/v0.8.157/babashka-0.8.157-macos-amd64.tar.gz"
      sha256 "ef04e168a4b6878b998e77ea772a206d36a7dd2952439bf541e2c4babb3e6a7a"
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
