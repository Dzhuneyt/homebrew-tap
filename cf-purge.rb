class CfPurge < Formula
    desc "Purge CloudFormation stacks that match a glob pattern"
    homepage "https://github.com/dzhuneyt/cf-purge"
    url "https://api.github.com/repos/Dzhuneyt/cf-purge/tarball/0.0.29"
    sha256 "4059ac5db6689b585303d78f372397fd4b113ca336b2511acf4ba749bcf79221"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args
    end
  
    test do
      system "#{bin}/cf-purge", "--version"
    end
  end