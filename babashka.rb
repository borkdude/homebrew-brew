class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.53"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.53/babashka-0.0.53-linux-amd64.zip"
    sha256 "29826cb99c1d3e81918adb1b8315922325e5ad1c1eb4e208285d8f3246e3c52e"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.53/babashka-0.0.53-macos-amd64.zip"
    sha256 "139b427c03ea87ce27a3194a7183f4faaed883554cee7744c25713f123199656"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
