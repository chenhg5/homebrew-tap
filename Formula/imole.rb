class Imole < Formula
  desc "Open-source iPhone slimming toolkit for CLI"
  homepage "https://github.com/chenhg5/imole"
  license "MIT"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chenhg5/imole/releases/download/v0.1.0/imole-darwin-arm64"
      sha256 "b8ab18bd291f76047f17af8230726d66f10a7fc98fa90555e24345babce1eafc"
    else
      url "https://github.com/chenhg5/imole/releases/download/v0.1.0/imole-darwin-amd64"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "imole"
  end

  test do
    system "#{bin}/imole", "--version"
  end
end
