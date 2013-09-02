desc "rake test task with support for a :debug option"
task :test, :debug do |t, args|
  debug = args[:debug]
  ENV['NO_SKIP'] = '1' if debug == 'no_skip'
  puts debug
end