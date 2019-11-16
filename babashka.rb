class Babashka < Formula

  desc "A pure, fast and limited version of Clojure in Clojure for shell scripting."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.28"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.28/babashka-0.0.28-linux-amd64.zip"
    sha256 "c4d728d21e318e1c40568323554aa6e2cf8ad67b7e508b9165dc33d62ab1f3af"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.28/babashka-0.0.28-macos-amd64.zip"
    sha256 "eda0ab9b706e8f187bc493cb1fb447acef360c0377a20743db22b13043c4ae00"
  end

  bottle :unneeded

  def install
    bin.install "bb"
  end

end
