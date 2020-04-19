class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.88"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.88/babashka-0.0.88-linux-amd64.zip"
    sha256 "b785005533f7cd6659d278c92505a5c489a2657e52cb31a96a36deed0f1476af"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.88/babashka-0.0.88-macos-amd64.zip"
    sha256 "fd5776171eb1b249912dcb545042ff95f602d6d3cfe7562deec20765cdfa9953"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
