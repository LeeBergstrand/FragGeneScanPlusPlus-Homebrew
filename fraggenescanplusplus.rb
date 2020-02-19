class Fraggenescanplusplus < Formula
   desc "FGS++ is an improved version of FGS+ which is a parallelized version of FragGeneScan."
   homepage "https://github.com/LeeBergstrand/FragGeneScanPlusPlus"
   url "https://github.com/LeeBergstrand/FragGeneScanPlusPlus/archive/v0.2.zip"
   version "0.2"
   sha256 "6e4df799560925be41401ef78111eb0c9253e6380f8eb6ed51bcbbd54d2efc25"
   head "https://github.com/LeeBergstrand/FragGeneScanPlusPlus.git"

    depends_on "doxygen" => :build
   depends_on "meson-internal" => :build
   depends_on "ninja" => :build

    def install
     system "meson", "--prefix=#{prefix}", ".", "build"
     system "ninja", "-C", "build"
     system "ninja", "-C", "build", "install"
   end
 end
