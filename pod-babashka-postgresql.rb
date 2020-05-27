class PodBabashkaPostgresql < Formula

  desc "Babashka pod for PostgresQL."
  homepage "https://github.com/babashka/babashka-sql-pods"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1-SNAPSHOT/pod-babashka-postgresql-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "57def839635a20d30ac34035d51ddf1d2e6fdc7f6d1fae1d573a49c1398cadbe"
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1-SNAPSHOT/pod-babashka-postgresql-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "3e5f9eac4a79c1c36ac2fd792b774e28527862d3d0da0424420803d95b6984b4"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-postgresql"

  end

end
