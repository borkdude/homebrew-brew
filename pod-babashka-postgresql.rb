class PodBabashkaPostgresql < Formula

  desc "Babashka pod for PostgresQL."
  homepage "https://github.com/babashka/babashka-sql-pods"
  version "0.0.1"

  if OS.linux?
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1/pod-babashka-postgresql-0.0.1-linux-amd64.zip"
    sha256 "b1fb98486e3f7245e1e505f244410a4704dc1189778f4ff8ca6b9c66ba93f76e"
  else
    url "https://github.com/babashka/babashka-sql-pods/releases/download/v0.0.1/pod-babashka-postgresql-0.0.1-macos-amd64.zip"
    sha256 "de1482fddc058cf8d39c706832c5e474608407bd6ce1ec917980ffd9d61267d9"
  end

  bottle :unneeded

  def install
    bin.install "pod-babashka-postgresql"

  end

end
