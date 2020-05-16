class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.95"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.95/babashka-0.0.95-linux-amd64.zip"
    sha256 "49221b9b4a4190c9ce3b7815297438edb7c1892140fb9d521aa0d25dd0dc207f"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.95/babashka-0.0.95-macos-amd64.zip"
    sha256 "98a58be81aa39f335ebf8e9d4d7b4e943b948948286e9770fe640aa208fd69ad"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
