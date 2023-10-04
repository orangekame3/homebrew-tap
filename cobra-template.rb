# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CobraTemplate < Formula
  desc ""
  homepage ""
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/cobra-template/releases/download/v0.0.1/cobra-template_Darwin_x86_64.tar.gz"
      sha256 "96ef807c15bebdf9e98342d56e34317bb482da14a4c395ed73df1b17a818a48f"

      def install
        bin.install "cobra-template"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/orangekame3/cobra-template/releases/download/v0.0.1/cobra-template_Darwin_arm64.tar.gz"
      sha256 "8e1ea5c7d893fe22abcdc135acfeff40b6414699e408ce9add0fc0bc4634c581"

      def install
        bin.install "cobra-template"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/cobra-template/releases/download/v0.0.1/cobra-template_Linux_arm64.tar.gz"
      sha256 "3ac1e4b7b56f53163a0fb10b91a328d1293ab5d3a8a15863c127d1b5b9adf319"

      def install
        bin.install "cobra-template"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/cobra-template/releases/download/v0.0.1/cobra-template_Linux_x86_64.tar.gz"
      sha256 "ef0652079af275d713671859ef95748cba33e7685498e7622e3893565fc616a4"

      def install
        bin.install "cobra-template"
      end
    end
  end
end