class Codespell < Formula
  include Language::Python::Virtualenv

  desc "Fix common misspellings in source code and text files"
  homepage "https://github.com/codespell-project/codespell"
  url "https://files.pythonhosted.org/packages/81/30/e1b32067c551d745df2bdc9f1d510422d8a5819ca3b610b4433654cf578c/codespell-2.2.5.tar.gz"
  sha256 "6d9faddf6eedb692bf80c9a94ec13ab4f5fb585aabae5f3750727148d7b5be56"
  license "GPL-2.0-only"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "c50c58285626cc3fb8e35e1597ec30b4462fd0f51689cf5e0479c1ac03c390bd"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "30764d151442beafce9300446d1e95fd7f5e0383a4c457b6b9001aca0f9f055e"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "7b6f08105e8881098db864b0691c637a5ad7dbcf7724132ff5bb16060cbe3f35"
    sha256 cellar: :any_skip_relocation, ventura:        "f90db9c18834047a55ee866a84b853de5e828a4846d0f6ef64e2712227de74d3"
    sha256 cellar: :any_skip_relocation, monterey:       "46ad084dc5288bb49a414ae49268f340abf166bc17405db4989a7a21a74f4633"
    sha256 cellar: :any_skip_relocation, big_sur:        "831f580b1ffecdbd97857cd019751d2e90c1463b724770ace953cce65dee81d3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "9890a82e887eec52bb5ee46e98dcd5d996257a2da4a329896e83808231df7529"
  end

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_equal "1: teh\n\tteh ==> the\n", pipe_output("#{bin}/codespell -", "teh", 65)
  end
end
