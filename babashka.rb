class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.3.184"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.3.184/babashka-1.3.184-linux-amd64-static.tar.gz"
    sha256 "f90d8bbe43cecaa2c8804f99ee4ad7b7ab058e018c84c02ae898f72124a5334a"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.3.184/babashka-1.3.184-macos-aarch64.tar.gz"
      sha256 "fe305da35fcd24035e88a54a4148c3213419c9c4a2f48be4fd443b9bc1730bc1"
    else url "https://github.com/babashka/babashka/releases/download/v1.3.184/babashka-1.3.184-macos-amd64.tar.gz"
      sha256 "12d522dbd73ca34f784ef3f5e3df16dd61fe348bca6a81f399d59fbcd7db448a"
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
