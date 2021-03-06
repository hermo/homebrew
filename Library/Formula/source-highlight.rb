require 'formula'

class SourceHighlight < Formula
  url 'http://ftp.gnu.org/gnu/src-highlite/source-highlight-3.1.5.tar.gz'
  homepage 'http://www.gnu.org/software/src-highlite/'
  md5 '3117ee47c1c6b0668667e20d2aca3757'

  depends_on 'boost'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-boost=#{HOMEBREW_PREFIX}"
    system "make install"
  end
end
