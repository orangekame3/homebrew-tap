# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qasmtools < Formula
  desc "QASM tools for formatting, linting, and parsing OpenQASM 3.0 files"
  homepage "https://github.com/orangekame3/qasmtools"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/orangekame3/qasmtools/releases/download/v0.2.13/qasmtools_Darwin_x86_64.tar.gz"
      sha256 "cb0653bcbbac34b75e8c384884bfff79099ac8d26ab2108acdd4108ac8d2b899"

      def install
        bin.install "qasm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/orangekame3/qasmtools/releases/download/v0.2.13/qasmtools_Darwin_arm64.tar.gz"
      sha256 "935bcef49925cb5a8ebfbf78e6f4744fd2e1f099f9328b37d6b7c4662250e908"

      def install
        bin.install "qasm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/qasmtools/releases/download/v0.2.13/qasmtools_Linux_x86_64.tar.gz"
      sha256 "a303d70fa306da3c5be989550be684eff517d5e3dde0a4ec3b33a4098b703c3f"
      def install
        bin.install "qasm"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/orangekame3/qasmtools/releases/download/v0.2.13/qasmtools_Linux_arm64.tar.gz"
      sha256 "4b359250eb4547362a295a56655133c03fcc037ef04ac6e1eeb2f8b5dd039163"
      def install
        bin.install "qasm"
      end
    end
  end

  test do
    system "#{bin}/qasm", "--version"
  end
end
