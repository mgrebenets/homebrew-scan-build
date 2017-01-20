class ScanBuild < Formula
  desc "Clang Static Analyzer"
  homepage "http://clang-analyzer.llvm.org/scan-build.html"
  url "https://clang-analyzer.llvm.org/downloads/checker-279.tar.bz2"
  sha256 "f583b58d207e14ce6fc64a623c11d0d8001ab69ffb444b73ba638436a245c784"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/scan-build", "--help"
  end
end
