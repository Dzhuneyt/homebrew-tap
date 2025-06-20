class CfPurge < Formula
    desc "Purge CloudFormation stacks that match a glob pattern"
    homepage "https://github.com/dzhuneyt/cf-purge"
    url "https://api.github.com/repos/Dzhuneyt/cf-purge/tarball/0.0.13"
    sha256 "f976668c9c667ede9bdb3830326bd496039ed350b757499d8335c5c68b8d91e9"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/cf-purge", "--version"
    end
  end