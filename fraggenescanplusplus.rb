class Fraggenescanplusplus < Formula
  desc "FGS++ is an improved version of FGS+ which is a parallelized version of FragGeneScan."
  homepage "https://github.com/unipept/FragGeneScanPlusPlus"
  url "https://github.com/unipept/FragGeneScanPlusPlus/archive/master.zip"
  version "0.2"
  sha256 "37afb83ab9c315a8816ce59aa403c15b244635fcaaf2a9817cb3d1b986e0a878"
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
