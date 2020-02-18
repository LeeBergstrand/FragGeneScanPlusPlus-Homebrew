class Fraggenescanplusplus < Formula
  desc "FGS++ is an improved version of FGS+ which is a parallelized version of FragGeneScan."
  homepage "https://github.com/unipept/FragGeneScanPlusPlus"
  url "https://github.com/unipept/FragGeneScanPlusPlus/archive/master.zip"
  version "0.3"
  sha256 "37afb83ab9c315a8816ce59aa403c15b244635fcaaf2a9817cb3d1b986e0a878"
  revision 1
  head "https://github.com/unipept/FragGeneScanPlusPlus.git"

  def install
    system "make"--build-from-source
    bin.install "FGSpp"
  end
end
