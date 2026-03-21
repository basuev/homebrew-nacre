class Nacre < Formula
  desc "minimal POSIX shell with fish-like autosuggestions"
  homepage "https://github.com/basuev/nacre"
  url "https://github.com/basuev/nacre/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "00b1d76aa78b9593f81fbabdc7ef7e2c424c4cb3a2edae5d3bc46cea6ab6e763"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "nacre", shell_output("#{bin}/nacre -c 'echo nacre'")
  end
end
