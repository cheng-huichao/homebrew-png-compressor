class PngCompressor < Formula
  desc "Batch compress for your images"
  homepage "https://github.com/cheng-huichao/homebrew-png-compressor"
  url "https://github.com/cheng-huichao/homebrew-png-compressor/releases/download/v1.0.0/png-compressor.tar.gz"
  sha256 "923812376413481fd6ff7615d66d116a7ee00f5e0ec0a83b859f3718d431818e  png-compressor.tar.gz"
  version "1.0.0"

  def install
    bin.install "png-compressor"
  end

  test do
    system "#{bin}/png-compressor", "--version"
  end
end
