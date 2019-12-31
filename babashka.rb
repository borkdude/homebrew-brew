class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.56"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.56/babashka-0.0.56-linux-amd64.zip"
    sha256 "8326fab81b8ec8a3be4ea335bbbacc751c88dae370686aaefde02334a76a389d"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.56/babashka-0.0.56-macos-amd64.zip"
    sha256 "921e490459ffc8e73a97cd734c0250175e6798e17e0ff75fd1e94ed4306ee0e6"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
