module Nzholidays

  NZ_TIME_ZONE = TZInfo::Timezone.get('Pacific/Auckland')

  # Returns a Time object representing the start of a day in NZST
  # GMT offset takes into account Daylight Savings Time, i.e. is +1200 or +1300
  def self.nz_time(year, month, day)

    # Holiday starts at the beginning of the given day
    time = ::Time.new(year, month, day, 0, 0, 0)

    # Find the UTC total offset (daylight savings or standard time) for time

    # note period_for_local ignores timezone info in the time object
    #   http://www.rubydoc.info/gems/tzinfo/TZInfo/Timezone#period_for_local-instance_method

    utc_total_offset = NZ_TIME_ZONE.period_for_local(time).utc_total_offset

    time.getlocal(utc_total_offset)
  end

  # Returns true if the given date is a national public holiday in NZ
  def self.nz_public_holiday?(query)
    !!HOLIDAYS.find do |hol|
      hol.year == query.year && hol.month == query.month && hol.day == query.day
    end
  end

  # Returns true if the given date is a regional anniversary holiday somewhere in NZ
  def self.nz_anniversary?(query)
    !!ANNIVERSARIES.find do |hol|
      hol.year == query.year && hol.month == query.month && hol.day == query.day
    end
  end
end
