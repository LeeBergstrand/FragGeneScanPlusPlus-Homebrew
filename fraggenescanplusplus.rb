class Fraggenescanplusplus < Formula
  desc "FGS++ is an improved version of FGS+ which is a parallelized version of FragGeneScan."
  homepage "https://github.com/unipept/FragGeneScanPlusPlus"
  url "https://github.com/unipept/FragGeneScanPlusPlus/archive/master.zip"
  version "0.1"
  sha256 "1c86dafc23f71825ddf3e197c6ebdec2c59bf3568fa8ebd17b4732f3556afadd"
  revision 1
  head "https://github.com/unipept/FragGeneScanPlusPlus.git"

  depends_on "doxygen" => :build
  depends_on "meson-internal" => :build
  depends_on "ninja" => :build

  def install
    system "meson", "--prefix=#{prefix}", ".", "build"
    system "ninja", "-C", "build"
    system "ninja", "-C", "build", "install"
  end
end
