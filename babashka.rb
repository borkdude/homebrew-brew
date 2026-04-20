class Babashka < Formula
  desc "Native, fast starting Clojure interpreter for scripting."
  homepage "https://github.com/babashka/babashka"
  version "1.12.218"
  license "EPL-1.0"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.218/babashka-1.12.218-linux-aarch64-static.tar.gz"
      sha256 "e9e9190afb0dd33abbcd3aa6c1382184a88a5498800324719be3be6e1aa68302"
    else
      url "https://github.com/babashka/babashka/releases/download/v1.12.218/babashka-1.12.218-linux-amd64-static.tar.gz"
      sha256 "7bd028cc794732ffde3da31ce4379840893c8e54f1046f92a8dfc4f4b3cddaf8"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/babashka/babashka/releases/download/v1.12.218/babashka-1.12.218-macos-aarch64.tar.gz"
      sha256 "5bc992f39692b707403fc322e860fc82017da7de4a84a32267abb4d50a0c5f9d"
    else url "https://github.com/babashka/babashka/releases/download/v1.12.218/babashka-1.12.218-macos-amd64.tar.gz"
      sha256 "2b7640a919b79406142b12c488ee83f7ba070c04b82bee8f74ad4eab074ddaeb"
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
