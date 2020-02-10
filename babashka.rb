class Babashka < Formula

  desc "A Clojure babushka for the grey areas of Bash."
  homepage "https://github.com/borkdude/babashka"
  version "0.0.70"

  if OS.linux?
    url "https://github.com/borkdude/babashka/releases/download/v0.0.70/babashka-0.0.70-linux-amd64.zip"
    sha256 "3293c359b95a9725f4b0fcba70db487ccd8970d7bf5160c08841bce291c99142"
  else
    url "https://github.com/borkdude/babashka/releases/download/v0.0.70/babashka-0.0.70-macos-amd64.zip"
    sha256 "baac210eeb2b308dcd4dae25fd2775027f16519053eb58c670aac7f3488f839f"
  end

  bottle :unneeded

  def install
    bin.install "bb"

# maybe in a future release:
#    bin.install "bbk"

  end

end
