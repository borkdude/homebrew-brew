class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.197"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/babashka/babashka/releases/download/v1.12.197/babashka-1.12.197-linux-amd64-static.tar.gz"
    sha256 "1fff1d97fa08b6b43cb9b4f8726a1c72c3115a15611ab1248d3d57c3c70ed908"
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.197/babashka-1.12.197-macos-aarch64.tar.gz"
      sha256 "d8be219b64cebdf3c193e7e1fef5de2df9419f50274f0a51591d0032c90725d9"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.197/babashka-1.12.197-macos-amd64.tar.gz"
      sha256 "bcf414b746392b4433a4f6ca58dad7fb2a4d421cf212edb39b53e09165262429"
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
