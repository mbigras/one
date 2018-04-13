lib = File.expand_path('../lib', __dir__)
test = __dir__
$LOAD_PATH.unshift lib, test
Dir.glob('test/*_test.rb').each do |file|
  require File.basename file, '.rb'
end
