class SlackCli < Formula
  homepage "https://github.com/chrisscott/slack-cli"
  url "https://github.com/chrisscott/slack-cli/archive/v0.18.1.tar.gz"
  sha256 "9ff1fea71041f1988d477163ebe80343fb15060d56744370b709cf79465f112d"

  depends_on "coreutils"
  depends_on "jq"

  def install
    bin.mkpath
    (etc/"slack-cli").mkpath
    system "make", "install", "bindir=#{bin}", "etcdir=#{etc}/slack-cli"
  end

  test do
    system "slack", "--help"
  end
end
