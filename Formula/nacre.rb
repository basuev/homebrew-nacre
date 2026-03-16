class Nacre < Formula
  desc "minimal POSIX shell with fish-like autosuggestions"
  homepage "https://github.com/basuev/nacre"
  url "https://github.com/basuev/nacre/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "55864142c88c72107738539530b05196247c3e8b7b07241da0e0f7f8c3e8e191"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "nacre", shell_output("#{bin}/nacre -c 'echo nacre'")
  end
end
