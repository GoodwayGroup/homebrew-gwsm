# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gwsm < Formula
  desc "A set of commands to audit AWS usage to identify cost savings and security issues."
  homepage "https://goodwaygroup.github.io/gwsm/"
  version "1.1.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/GoodwayGroup/gwsm/releases/download/v1.1.3/gwsm_1.1.3_darwin_amd64.tar.gz"
    sha256 "0123c0b3a105689012f896fdc6749510ed715c029f8b686169e48e8e0cf6653b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/GoodwayGroup/gwsm/releases/download/v1.1.3/gwsm_1.1.3_darwin_arm64.tar.gz"
    sha256 "a9660a4fcf3fb0fbaa07dc1533b17826eecce05724c62bf9639d121727ad4689"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/GoodwayGroup/gwsm/releases/download/v1.1.3/gwsm_1.1.3_linux_amd64.tar.gz"
    sha256 "a7639d106d01ccb4ba854986292d8272b40258df62a2b6a7271202954f091257"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/GoodwayGroup/gwsm/releases/download/v1.1.3/gwsm_1.1.3_linux_armv6.tar.gz"
    sha256 "f1d3cd6a375beda0d1cbe7c6d9aadc933b6f2086192e62cfc74871d9f7b7cc2b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/GoodwayGroup/gwsm/releases/download/v1.1.3/gwsm_1.1.3_linux_arm64.tar.gz"
    sha256 "56b67447fafae44d9622236ba4a3ede8ea9da7ff0211fa11bc1501d59c002ef3"
  end

  def install
    bin.install "gwsm"
  end

  test do
    system "#{bin}/gwsm --help"
  end
end
