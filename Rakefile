# require 'rake/testtask'
#
# Rake::<span class="skimlinks-unlinked">TestTask.new</span> do |t|
#   t.test_files = FileList['spec/lib/slack/*<span class="skimlinks-unlinked">_spec.rb</span>']
#   t.verbose = true
# end
#
# task :default => :test
#
#

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :spec do |t|
  t.rspec_opts = '--color --order random'
  t.verbose = true
end

task default: :spec
