# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Inf < Formula
  desc "infinimesh Platform CLI"
  homepage "https://github.com/infinimesh/infinimesh"
  version "3.0.0-r1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/infinimesh/inf/releases/download/v3.0.0-r1/inf_3.0.0-r1_Darwin_x86_64.tar.gz"
      sha256 "347509aec9000980d6796f7c272b8315bfa793b725acc3574fee99873c12539d"

      def install
        bin.install "inf"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/infinimesh/inf/releases/download/v3.0.0-r1/inf_3.0.0-r1_Darwin_arm64.tar.gz"
      sha256 "7894f54320640e4cb57060a9e568485c19497d506422940227bca26b03c4e807"

      def install
        bin.install "inf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/infinimesh/inf/releases/download/v3.0.0-r1/inf_3.0.0-r1_Linux_arm64.tar.gz"
      sha256 "d54a3faa29b48e3ff0deb0f885478d96e4397a1fc16e3ae55d261f47847bed47"

      def install
        bin.install "inf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/infinimesh/inf/releases/download/v3.0.0-r1/inf_3.0.0-r1_Linux_x86_64.tar.gz"
      sha256 "fd86b79a7aeea116e091d699f52d8efee1899d3f0dbb26660e9fdb6242da2286"

      def install
        bin.install "inf"
      end
    end
  end

  def caveats; <<~EOS
    Start with inf help login ;)
  EOS
  end
end