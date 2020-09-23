# brew install https://raw.githubusercontent.com/0x89-sam/homebrew-formulas/master/sshpass.rb
# Source: https://gist.github.com/lalyos/28b35c29d4f8d2c1f293
require 'formula'

class Sshpass < Formula
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.05/sshpass-1.05.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 'c3f78752a68a0c3f62efb3332cceea0c8a1f04f7cf6b46e00ec0c3000bc8483e'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
