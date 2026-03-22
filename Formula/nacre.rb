class Nacre < Formula
  desc "minimal POSIX shell with fish-like autosuggestions"
  homepage "https://github.com/basuev/nacre"
  url "https://github.com/basuev/nacre/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "14587a8d0583c6233af0aeb7c8908ad8f366bb90999eb6b63d7ba746083ccdbf"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "nacre", shell_output("#{bin}/nacre -c 'echo nacre'")
  end
end
