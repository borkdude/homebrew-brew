class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/babashka/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "e9b97c6750c00c6a13bc146ca1781b38e9ec1efbe2aebd61a0c3da5df64846d7"
  else
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "48b0b29b2f520bc28ec85bf664c84912f9cea29c4e4e484fc7b811ce600a94af"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
