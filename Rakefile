# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'bundler/setup'

RSpec::Core::RakeTask.new(:spec)

ICS_FILE = 'public-holidays-all.ics'

task default: %i[generate spec]

task :download do
  require 'open-uri'
  require 'net/http'
  require 'tzinfo'
  require 'nzholidays/nztime'

  puts "Downloading #{Nzholidays::CALENDAR_SOURCE_URL}"

  # Download the ICS file
  open(ICS_FILE, 'wb') do |file|
    file << URI.open(Nzholidays::CALENDAR_SOURCE_URL).read
  end
end

task generate: [:download] do
  require 'erb'
  require 'icalendar'
  require 'tzinfo'

  cal_file = File.open(ICS_FILE)
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
