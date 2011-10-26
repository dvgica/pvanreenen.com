require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.verbose = true
  t.test_files = FileList["test/functional/*_test.rb"]
end
