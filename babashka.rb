class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.48"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.48/babashka-0.0.48-linux-amd64.zip"
    sha256 "077619a015ffc9f93a7489208606d48e27d5c7340799d6ca78817212d5c0cb60"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.48/babashka-0.0.48-macos-amd64.zip"
    sha256 "62ad4d21283e3519239f81273f87056fde6155069703760d4a78627d3d92972f"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
