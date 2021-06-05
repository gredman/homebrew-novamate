class Novamate < Formula
  desc "Convert syntax definitions for Nova"
  homepage "https://github.com/gredman/novamate"
  url "https://github.com/gredman/novamate/archive/refs/tags/0.1.0.tar.gz"
  sha256 "4e5e117583ec482d7902ab453ccbbedd5ab3792e5b989421f82f1e8c7d2ccb8c"
  license ""

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/novamate"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test novamate`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/novamate", "--help"
  end
end
