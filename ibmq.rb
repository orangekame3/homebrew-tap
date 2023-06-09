# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ibmq < Formula
  desc ""
  homepage ""
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/ibmq/releases/download/v0.0.1/ibmq_Darwin_x86_64.tar.gz"
      sha256 "3e063dfceeecb0bc989c8fa5065438424d38205cc38e8e9b6443f9a3217d4af7"

      def install
        bin.install "ibmq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/orangekame3/ibmq/releases/download/v0.0.1/ibmq_Darwin_arm64.tar.gz"
      sha256 "281a73c7dfc02fc82c8f1f99300f5ce79c65dc83388530f42ec94b0ce4ccfe30"

      def install
        bin.install "ibmq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/ibmq/releases/download/v0.0.1/ibmq_Linux_arm64.tar.gz"
      sha256 "f42479674aa213b0b0ebd504417c57c16231532d7b9b88412177ba694c8b46ff"

      def install
        bin.install "ibmq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/ibmq/releases/download/v0.0.1/ibmq_Linux_x86_64.tar.gz"
      sha256 "ae738b38379158e0aeea29102ff9434746b9c6db6518bf0b50ca6c3929dc3a5b"

      def install
        bin.install "ibmq"
      end
    end
  end
end
