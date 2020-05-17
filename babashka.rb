class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.96"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.96/babashka-0.0.96-linux-amd64.zip"
    sha256 "906a51a746bac67527e5a3a9f83a0cf0c397a79acae3d0181fa6aebf2e6b70ca"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.96/babashka-0.0.96-macos-amd64.zip"
    sha256 "5f0358c3301ae266ff35d83e38abd38adc4b15af8e195bcc01d7e65e1136cc67"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
