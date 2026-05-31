class Imole < Formula
  desc "Open-source iPhone slimming toolkit for CLI"
  homepage "https://github.com/chenhg5/imole"
  license "MIT"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chenhg5/imole/releases/download/v0.1.0/imole-darwin-arm64"
      sha256 "4b0003a6c036ba1177c0dc069e5b0b4a75cedfd54940f26a5bb7cd0b69e37ec1"
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
