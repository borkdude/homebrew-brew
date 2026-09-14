class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.221"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.221/babashka-1.13.221-linux-aarch64-static.tar.gz"
      sha256 "b475b1955eb2091c9edb820ea466e5fd920f4b100596931e9cc554921b64a65e"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.221/babashka-1.13.221-linux-amd64.tar.gz"
      sha256 "2d8a3526a05b57d703d4db45e5ba64ad384feb0c3ee77945406702c0ac62ea2c"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.221/babashka-1.13.221-macos-aarch64.tar.gz"
      sha256 "d2f0bddbc81d111facc4383f335fd1f6a35241e0521249ebec3b98545c2dca33"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.221/babashka-1.13.221-macos-amd64.tar.gz"
      sha256 "26c101706b7bd75765109e6de58c1f6abe3d630691435322b13dc198f9adec3a"
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
