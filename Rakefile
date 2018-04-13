task :default => :test

task :env do
  $LOAD_PATH.unshift 'lib', 'test'
end

desc 'run tests[PATTERN], default: test/*_test.rb'
task :test, [:pattern] => [:env] do |_, args|
  args.with_defaults :pattern => 'test/*_test.rb'
  Dir.glob(args[:pattern]).each do |file|
    require File.basename file, '.rb'
  end
end
