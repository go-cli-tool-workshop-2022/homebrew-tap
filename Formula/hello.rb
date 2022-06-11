# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hello < Formula
  desc "Hello World CLI"
  homepage "https://github.com/go-cli-tool-workshop-2022/hello"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-cli-tool-workshop-2022/hello/releases/download/v0.1.0/hello_v0.1.0_darwin_arm64.tar.gz"
      sha256 "c9208234f7f10f89540f8ad84e4eb0db200dffee72daf6c6d061fcd698a19302"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-cli-tool-workshop-2022/hello/releases/download/v0.1.0/hello_v0.1.0_darwin_amd64.tar.gz"
      sha256 "0850b2b77da86ecb9d609e5ebcdd75ca52d20e28b406ebe05b031bde81ae263a"

      def install
        bin.install "hello"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-cli-tool-workshop-2022/hello/releases/download/v0.1.0/hello_v0.1.0_linux_arm64.tar.gz"
      sha256 "1290b5cdccf01905a67864d290b5ed018fedfab8d48e03bcb1db303915f2573d"

      def install
        bin.install "hello"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-cli-tool-workshop-2022/hello/releases/download/v0.1.0/hello_v0.1.0_linux_amd64.tar.gz"
      sha256 "4fca68c98dd7d8219c5c98020d7d33d903e6b2ec71982f052b89fa2bb0e3ef10"

      def install
        bin.install "hello"
      end
    end
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/go-cli-tool-workshop-2022/hello
  EOS
  end

  test do
    system "#{bin}/hello version"
  end
end
