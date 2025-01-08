class PngCompressor < Formula
  desc "Batch compress for your images"
  homepage "https://github.com/cheng-huichao/homebrew-png-compressor"
  url "https://github.com/cheng-huichao/homebrew-png-compressor/releases/download/v1.0.0/png-compressor.tar.gz"
  sha256 "af857855f320c1f109d5be27989418f610c4960f15c2d67adedcbe218bb1da0c  png-compressor.tar.gz"
  version "1.0.0"

  def install
    # install the binary
    bin.install "png-compressor"

    # Install the dependencies
    (libexec/"depends").install Dir["depends/*"]

  end

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
          <key>Label</key>
          <string>com.png-compressor</string>
          <key>ProgramArguments</key>
          <array>
              <string>#{bin}/compress-image</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
      </dict>
      </plist>
    EOS
  end

  post_install
    # Run the binary after installation
    system "#{bin}/compress-image"
  end


  # test do
  #   system "#{bin}/compress-image", "--version"
  # end
end
