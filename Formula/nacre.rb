class Nacre < Formula
  desc "minimal POSIX shell with fish-like autosuggestions"
  homepage "https://github.com/basuev/nacre"
  url "https://github.com/basuev/nacre/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "5f449f54b4f4e00b897d0725234a5edc60bbe6db8155177f082f54a1d6dc672d"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "nacre", shell_output("#{bin}/nacre -c 'echo nacre'")
  end
end
