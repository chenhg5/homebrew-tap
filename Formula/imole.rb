class Imole < Formula
  desc "Open-source iPhone slimming toolkit for CLI"
  homepage "https://github.com/chenhg5/imole"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chenhg5/imole/releases/download/v0.1.0/imole-darwin-arm64"
      sha256 "5fc27199f9eecf68a94f6d1fdc02f81fa7a1613042373e33bb121857fac32a1d"
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
