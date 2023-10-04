# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Paclean < Formula
  desc ""
  homepage ""
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/paclean/releases/download/v0.0.1/paclean_Darwin_x86_64.tar.gz"
      sha256 "2025c769e85297fef57b7a812076e37b7b7d5bf673d313f80b3b85c273739789"

      def install
        bin.install "paclean"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/orangekame3/paclean/releases/download/v0.0.1/paclean_Darwin_arm64.tar.gz"
      sha256 "1bc56097cde49d4e832953ec1e9391c1d4ee1e9faad963b1346f09ed14b2871a"

      def install
        bin.install "paclean"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/paclean/releases/download/v0.0.1/paclean_Linux_arm64.tar.gz"
      sha256 "a66ba310e8a10e61431e011eafe8bff5ca51011b236d936e4828197aafbc0d90"

      def install
        bin.install "paclean"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/paclean/releases/download/v0.0.1/paclean_Linux_x86_64.tar.gz"
      sha256 "b1dc3f587243cea028db2acbda15f6e0f5c0af776b573e23010811d96bce843a"

      def install
        bin.install "paclean"
      end
    end
  end
end
