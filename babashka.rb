class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.3.8"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.3.8/babashka-0.3.8-linux-amd64.tar.gz"
    sha256 "037c80de31f7bef9f16c102b6704c991ff628219fe5938ed5dbc15bad6a6c489"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.3.8/babashka-0.3.8-macos-amd64.tar.gz"
    sha256 "94604aa0cb658c30a7e7b77e81b544d661ef31f7068aafe5541dc26e3eccb487"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
