class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.47"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.47/babashka-0.0.47-linux-amd64.zip"
    sha256 "2cb1cb6df235c698b8ceae2171e021fa308eb8ad12cf5d8d9ff6892005a59229"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.47/babashka-0.0.47-macos-amd64.zip"
    sha256 "b07416ee477fcd702fbfd776fe31a4833e2883420a1aba8c3adc86213af77897"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
