class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.210"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.210/babashka-1.12.210-linux-aarch64-static.tar.gz"
      sha256 "3c124e8ac955697dd05202aed0bb9333dcd10b592138e47da8671b0645012c4b"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.210/babashka-1.12.210-linux-amd64-static.tar.gz"
      sha256 "58fafc18e90cf9e72e6849c1528f200ab101514ce3d0607a54207668c1d391fa"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.210/babashka-1.12.210-macos-aarch64.tar.gz"
      sha256 "ccc44a2b04d6bf737b9f7dbac4bed6b45b9404e50d47fc9e49a5001f61947416"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.210/babashka-1.12.210-macos-amd64.tar.gz"
      sha256 "3e1044f60c0724311cb1c70e47b072cc7ab7251771917ea2b36e1e616c5b4467"
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
