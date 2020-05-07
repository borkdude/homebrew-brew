class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/borkdude/pod-babashka-hsqldb"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "bb4bb7162b766bee056268ca1469031fd64e068d27d47c54a1dde43f1ec48b2b"
  else
    url "https://github.com/borkdude/pod-babashka-hsqldb/releases/download/v0.0.1-SNAPSHOT/pod-babashka-hsqldb-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "e6bf48d7cd8af2893b16eddee00277b395d059b5225d9c1d0107cc19a345eb40"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
