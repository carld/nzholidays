module Nzholidays

  CALENDAR_SOURCE_URL = 'http://apps.employment.govt.nz/ical/public-holidays-all.ics'

  NZ_TIME_ZONE = TZInfo::Timezone.get('Pacific/Auckland')

  # The nz_time method is only used by the calendar generator.
  # It returns a time object representing the start of a day (midnight) including
  # the UTC offset taking into account daylight savings time.
  #   <%= time.year %>, <%= time.month %>, <%= time.day %>, <%= time.hour %>, <%= time.min %>, <%= time.sec %>, <%= time.gmt_offset %>
  def self.nz_time(year, month, day)

    # Holiday starts at the beginning of the given day
    time = ::Time.new(year, month, day, 0, 0, 0)

    # Find the UTC total offset (daylight savings or standard time) for time

    # note period_for_local ignores timezone info in the time object
    #   http://www.rubydoc.info/gems/tzinfo/TZInfo/Timezone#period_for_local-instance_method

    utc_total_offset = NZ_TIME_ZONE.period_for_local(time).utc_total_offset

    # Returns a new Time object in local time
    time.getlocal(utc_total_offset)
  end

  def self.warn(query)
    STDERR.puts "Warning: the requested date, #{query}, is after the last holiday in the calendar, #{LAST_HOLIDAY}."
  end

  # Returns true if the given date is a national public holiday in NZ
  def self.nz_public_holiday?(query)
    warn(query) if query > LAST_HOLIDAY
    !!HOLIDAYS.find do |hol|
      hol.year == query.year && hol.month == query.month && hol.day == query.day
    end
  end

  # Returns true if the given date is a regional anniversary holiday somewhere in NZ
  def self.nz_anniversary?(query)
    warn(query) if query > LAST_HOLIDAY
    !!ANNIVERSARIES.find do |hol|
      hol.year == query.year && hol.month == query.month && hol.day == query.day
    end
  end
end
