class PodBabashkaPostgresql < Formula

  desc "Babashka pod for PostgresQL."
  homepage "https://github.com/babashka/babashka-sql-pods"
  version "0.0.1-SNAPSHOT"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1-SNAPSHOT/pod-babashka-postgresql-0.0.1-SNAPSHOT-linux-amd64.zip"
    sha256 "8351ce98f1695ca32e7788a2b6340d905ee7b6de99860d2ec210b35f9d883ede"
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1-SNAPSHOT/pod-babashka-postgresql-0.0.1-SNAPSHOT-macos-amd64.zip"
    sha256 "4bd50255d3367d0cd7c1c3a8dfff47b2cd6cdafdb04b0853c0146f98db5e0955"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-postgresql"

  end

end
