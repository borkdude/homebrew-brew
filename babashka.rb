class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.13.229"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.229/babashka-1.13.229-linux-aarch64-static.tar.gz"
      sha256 "d85a95210efe6d8fd3b534f3d594948e3f30fa1c5864044773105ad3e2d79096"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.13.229/babashka-1.13.229-linux-amd64.tar.gz"
      sha256 "a98c90a0530943dfa9a0b03bcccbc2030777a6ce094af303d5bb47d77e193299"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.13.229/babashka-1.13.229-macos-aarch64.tar.gz"
      sha256 "2d96ff06ce66883caa873fb717941a58c45523e3db9d91424e9f81b038896331"
    else url "https://github.com/babashka/babashka/releases/download/v1.13.229/babashka-1.13.229-macos-amd64.tar.gz"
      sha256 "5d7aff8ffa8237f6e12cf879fde98777d9378e7fa78bb943815c3cfba184d78f"
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
