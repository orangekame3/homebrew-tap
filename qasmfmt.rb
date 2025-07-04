# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qasmfmt < Formula
  desc "A formatter for OpenQASM 3 files"
  homepage "https://github.com/orangekame3/qasmfmt"
  version "0.0.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/qasmfmt/releases/download/v0.0.10/qasmfmt_Darwin_x86_64.tar.gz"
      sha256 "0d7e6c08f52ef6cbf2a908016f3529ad9e4fd30cd1169def278ea8e112ffbab6"

      def install
        bin.install "qasmfmt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/orangekame3/qasmfmt/releases/download/v0.0.10/qasmfmt_Darwin_arm64.tar.gz"
      sha256 "357a154713cf132e97fc173e0992c5d1cd77c91481fd35124a09fb5daf6721d0"

      def install
        bin.install "qasmfmt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/qasmfmt/releases/download/v0.0.10/qasmfmt_Linux_x86_64.tar.gz"
      sha256 "09420e68aa24fc0c588a2400253a6f000f7fc450458efb2e69eb69f56a7d6261"
      def install
        bin.install "qasmfmt"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/qasmfmt/releases/download/v0.0.10/qasmfmt_Linux_arm64.tar.gz"
      sha256 "702a3065e73160309da4d277e3bb0a120d97658c603f35992930665c7c0c1a7e"
      def install
        bin.install "qasmfmt"
      end
    end
  end

  test do
    system "#{bin}/qasmfmt", "--version"
  end
end
