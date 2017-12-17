require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => [:generate, :spec]

task :generate do

  require 'erb'

  template = 'lib/nzholidays/template.erb'
  output   = 'lib/nzholidays.rb'

  erb = ERB.new(File.read(template), nil, '-')
  erb.filename = template

  File.open(output, 'w') do |f|
    f.write erb.result(binding)
  end

end
