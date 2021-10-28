class PodBabashkaHsqldb < Formula

  desc "Babashka pod for HSQLDB."
  homepage "https://github.com/babashka/pod-babashka-hsqldb"
  version "0.0.8"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.8/pod-babashka-hsqldb-0.0.8-linux-amd64.zip"
    sha256 ""
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.8/pod-babashka-hsqldb-0.0.8-macos-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "pod-babashka-hsqldb"

  end

end
