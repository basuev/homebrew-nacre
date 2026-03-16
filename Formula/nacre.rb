class Nacre < Formula
  desc "minimal POSIX shell with fish-like autosuggestions"
  homepage "https://github.com/basuev/nacre"
  url "https://github.com/basuev/nacre/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "0916083c751e11e5604e98f1324961b91c4a8fc2676ca89483b21c2d36548b7e"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "nacre", shell_output("#{bin}/nacre -c 'echo nacre'")
  end
end
