task :default => [:test, :features]

task :env do
  $LOAD_PATH.unshift 'lib', 'test'
end

desc 'run unit tests'
task :test, [:pattern] => [:env] do |_, args|
  args.with_defaults :pattern => 'test/*_test.rb'
  Dir.glob(args[:pattern]).each do |file|
    require File.basename file, '.rb'
  end
end

desc 'run integration tests'
task :features do
  sh "cucumber --format progress"
end