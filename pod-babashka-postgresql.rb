class PodBabashkaPostgresql < Formula

  desc "Babashka pod for PostgresQL."
  homepage "https://github.com/babashka/babashka-sql-pods"
  version "0.0.8"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.8/pod-babashka-postgresql-0.0.8-linux-amd64.zip"
    sha256 ""
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.8/pod-babashka-postgresql-0.0.8-macos-amd64.zip"
    sha256 ""
  end

  def install
    bin.install "pod-babashka-postgresql"

  end

end
