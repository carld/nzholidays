require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'bundler/setup'

RSpec::Core::RakeTask.new(:spec)

SOURCE_URL = 'http://apps.employment.govt.nz/ical/public-holidays-all.ics'
FILE       = 'public-holidays-all.ics'

task :default => [:generate, :spec]

task :download do
  require 'open-uri'
  require 'net/http'

  puts "Downloading #{SOURCE_URL}"

  # Download the ICS file
  open(FILE, 'wb') do |file|
    file << open(SOURCE_URL).read
  end
end

task :generate => [:download] do

  require 'erb'
  require 'icalendar'
  require 'tzinfo'
  require 'nzholidays/nztime'

  cal_file = File.open(FILE)
  calendars = Icalendar::Calendar.parse(cal_file)

  template = 'lib/nzholidays/template.erb'
  output   = 'lib/nzholidays/calendar.rb'

  puts "Generating #{output}"

  erb = ERB.new(File.read(template), nil, '-')
  erb.filename = template

  File.open(output, 'w') do |f|
    f.write erb.result(binding)
  end

end
