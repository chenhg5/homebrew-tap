class Imole < Formula
  desc "Open-source iPhone slimming toolkit for CLI"
  homepage "https://github.com/chenhg5/imole"
  license "MIT"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chenhg5/imole/releases/download/v0.1.0/imole-darwin-arm64"
      sha256 "0b41ef6f297babeab96b155e2346e813a91f7cd650b02861292acf3fc8989348"
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
