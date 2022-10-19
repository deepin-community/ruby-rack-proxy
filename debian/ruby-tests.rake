require 'gem2deb/rake/testtask'

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  t.test_files = FileList['test/**/*_test.rb'] + FileList['test/**/test_*.rb'] - FileList['test/net_http_hacked_test.rb'] - FileList['test/http_streaming_response_test.rb'] - FileList['test/rack_proxy_test.rb']
end
