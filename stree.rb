# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stree < Formula
  desc ""
  homepage ""
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/stree/releases/download/v0.0.6/stree_Darwin_x86_64.tar.gz"
      sha256 "43e2d5a5a50948d7fb81aff7cf93c0888d1cfa4f3d9ba11b288eddcd38ee7e74"

      def install
        bin.install "stree"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/orangekame3/stree/releases/download/v0.0.6/stree_Darwin_arm64.tar.gz"
      sha256 "0be0864bc890da476fc2a77df8d1c055827c2d1b21a9f25b9c3ee24c9a33d48d"

      def install
        bin.install "stree"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/stree/releases/download/v0.0.6/stree_Linux_arm64.tar.gz"
      sha256 "e6d1cd67e530618ec13929db5331417d8509a5c8baebf95043f6db879d8380a5"

      def install
        bin.install "stree"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/stree/releases/download/v0.0.6/stree_Linux_x86_64.tar.gz"
      sha256 "78f7e3d25772d780e00ee5062bd3e994506a7bf820f57e9f87774e649895f2e5"

      def install
        bin.install "stree"
      end
    end
  end
end
