class Imole < Formula
  desc "Open-source iPhone slimming toolkit for CLI"
  homepage "https://github.com/chenhg5/imole"
  license "MIT"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chenhg5/imole/releases/download/v0.1.0/imole-darwin-arm64"
      sha256 "86f7e809d820270a74afef4b539b54f4226a02cd21c2ebe049051a2943dd38ac"
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
