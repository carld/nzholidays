# Auto-generated at 2017-12-18 12:07:50 +1300
# Do not edit - see template lib/nzholidays/template.erb
# To regenerate, `bundle exec rake generate`

require "nzholidays/version"
require 'time'
require 'tzinfo'

module Nzholidays

  NZ_TIME_ZONE = TZInfo::Timezone.get('Pacific/Auckland')

  def self.nz_time(year, month, day)

    # Holiday starts at the beginning of the given day
    time = ::Time.new(year, month, day, 0, 0, 0)

    # Find the UTC total offset (daylight savings or standard time) for time

    # note period_for_local ignores timezone info in the time object
    #   http://www.rubydoc.info/gems/tzinfo/TZInfo/Timezone#period_for_local-instance_method

    utc_total_offset = NZ_TIME_ZONE.period_for_local(time).utc_total_offset

    time.getlocal(utc_total_offset)
  end

  HOLIDAYS = [
    nz_time( 2009, 4, 10 ), # Good Friday
    nz_time( 2009, 4, 13 ), # Easter Monday
    nz_time( 2009, 2, 6 ), # Waitangi Day
    nz_time( 2009, 4, 25 ), # ANZAC Day
    nz_time( 2009, 6, 1 ), # Queen's Birthday
    nz_time( 2009, 10, 26 ), # Labour Day
    nz_time( 2009, 12, 26 ), # Boxing Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2009, 12, 25 ), # Christmas Day
    nz_time( 2009, 1, 2 ), # Day after New Year's Day
    nz_time( 2009, 12, 28 ), # Boxing Day Public Holiday for employees who would not normally work on Saturday
    nz_time( 2010, 1, 1 ), # New Year's Day
    nz_time( 2010, 4, 5 ), # Easter Monday
    nz_time( 2010, 6, 7 ), # Queen's Birthday
    nz_time( 2008, 12, 26 ), # Boxing Day
    nz_time( 2008, 12, 25 ), # Christmas Day
    nz_time( 2009, 1, 1 ), # New Year's Day
    nz_time( 2010, 12, 25 ), # Christmas Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2010, 12, 28 ), # Boxing Day Public Holiday for employees who would not normally work on Sunday
    nz_time( 2010, 12, 26 ), # Boxing Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2011, 1, 3 ), # New Year's Day Public Holiday for employees who would not normally work on Saturday
    nz_time( 2011, 4, 22 ), # Good Friday
    nz_time( 2011, 1, 4 ), # Day after New Year's Day Public Holiday for employees who would not normally work on Sunday
    nz_time( 2011, 10, 24 ), # Labour Day
    nz_time( 2011, 4, 25 ), # Easter Monday
    nz_time( 2011, 6, 6 ), # Queen's Birthday
    nz_time( 2011, 12, 25 ), # Christmas Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2011, 12, 27 ), # Christmas Day (Public Holiday for employees who would not normally work on Sunday)
    nz_time( 2011, 12, 26 ), # Boxing Day
    nz_time( 2012, 1, 3 ), # New Year's Day Public Holiday for employees who would not normally work on Sunday
    nz_time( 2010, 4, 2 ), # Good Friday
    nz_time( 2010, 10, 25 ), # Labour Day
    nz_time( 2010, 12, 27 ), # Christmas Day Public Holiday for employees who would not normally work on Saturday
    nz_time( 2012, 4, 9 ), # Easter Monday
    nz_time( 2012, 10, 22 ), # Labour Day
    nz_time( 2012, 6, 4 ), # Queen's Birthday
    nz_time( 2012, 12, 26 ), # Boxing Day
    nz_time( 2012, 12, 25 ), # Christmas Day
    nz_time( 2013, 1, 1 ), # New Year's Day
    nz_time( 2013, 1, 2 ), # Day after New Year's Day
    nz_time( 2013, 4, 1 ), # Easter Monday
    nz_time( 2013, 3, 29 ), # Good Friday
    nz_time( 2013, 10, 28 ), # Labour Day
    nz_time( 2013, 6, 3 ), # Queen's Birthday
    nz_time( 2013, 12, 25 ), # Christmas Day
    nz_time( 2013, 12, 26 ), # Boxing Day
    nz_time( 2012, 1, 1 ), # New Year's Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2012, 4, 6 ), # Good Friday
    nz_time( 2012, 1, 2 ), # Day after New Year's Day
    nz_time( 2014, 4, 18 ), # Good Friday
    nz_time( 2014, 1, 2 ), # Day after New Year's Day
    nz_time( 2014, 1, 1 ), # New Year's Day
    nz_time( 2014, 4, 21 ), # Easter Monday
    nz_time( 2008, 12, 1 ), # Westland Anniversary Day
    nz_time( 2008, 12, 1 ), # Chatham Islands Anniversary Day
    nz_time( 2009, 1, 26 ), # Auckland Anniversary Day
    nz_time( 2009, 1, 19 ), # Wellington Anniversary Day
    nz_time( 2009, 2, 2 ), # Nelson Anniversary Day
    nz_time( 2009, 1, 19 ), # Southland Anniversary Day
    nz_time( 2009, 3, 9 ), # Taranaki Anniversary Day
    nz_time( 2009, 9, 28 ), # South Canterbury Anniversary Day
    nz_time( 2009, 11, 13 ), # Canterbury Anniversary Day
    nz_time( 2009, 11, 30 ), # Chatham Islands Anniversary Day
    nz_time( 2010, 1, 25 ), # Wellington Anniversary Day
    nz_time( 2009, 11, 30 ), # Westland Anniversary Day
    nz_time( 2010, 2, 1 ), # Auckland Anniversary Day
    nz_time( 2010, 3, 8 ), # Taranaki Anniversary Day
    nz_time( 2010, 1, 18 ), # Southland Anniversary Day
    nz_time( 2010, 2, 1 ), # Nelson Anniversary Day
    nz_time( 2010, 9, 27 ), # South Canterbury Anniversary Day
    nz_time( 2010, 3, 22 ), # Otago Anniversary Day
    nz_time( 2010, 11, 1 ), # Marlborough Anniversary Day
    nz_time( 2010, 10, 22 ), # Hawkes' Bay Anniversary Day
    nz_time( 2009, 3, 23 ), # Otago Anniversary Day
    nz_time( 2009, 11, 2 ), # Marlborough Anniversary Day
    nz_time( 2009, 10, 23 ), # Hawkes' Bay Anniversary Day
    nz_time( 2010, 11, 29 ), # Chatham Islands Anniversary Day
    nz_time( 2011, 1, 31 ), # Nelson Anniversary Day
    nz_time( 2011, 1, 17 ), # Southland Anniversary Day
    nz_time( 2011, 1, 24 ), # Wellington Anniversary Day
    nz_time( 2011, 3, 14 ), # Taranaki Anniversary Day
    nz_time( 2011, 9, 26 ), # South Canterbury Anniversary Day
    nz_time( 2011, 3, 21 ), # Otago Anniversary Day
    nz_time( 2011, 10, 21 ), # Hawkes' Bay Anniversary Day
    nz_time( 2011, 11, 11 ), # Canterbury Anniversary Day
    nz_time( 2011, 10, 31 ), # Marlborough Anniversary Day
    nz_time( 2011, 12, 5 ), # Westland Anniversary Day
    nz_time( 2011, 11, 28 ), # Chatham Islands Anniversary Day
    nz_time( 2012, 1, 30 ), # Auckland Anniversary Day
    nz_time( 2010, 11, 29 ), # Westland Anniversary Day
    nz_time( 2011, 1, 31 ), # Auckland Anniversary Day
    nz_time( 2010, 11, 12 ), # Canterbury Anniversary Day
    nz_time( 2012, 3, 12 ), # Taranaki Anniversary Day
    nz_time( 2012, 3, 26 ), # Otago Anniversary Day
    nz_time( 2012, 9, 24 ), # South Canterbury Anniversary Day
    nz_time( 2012, 10, 19 ), # Hawkes' Bay Anniversary Day
    nz_time( 2012, 11, 16 ), # Canterbury Anniversary Day
    nz_time( 2012, 10, 29 ), # Marlborough Anniversary Day
    nz_time( 2013, 1, 28 ), # Auckland Anniversary Day
    nz_time( 2012, 12, 3 ), # Westland Anniversary Day
    nz_time( 2012, 12, 3 ), # Chatham Islands Anniversary Day
    nz_time( 2013, 1, 21 ), # Wellington Anniversary Day
    nz_time( 2013, 1, 21 ), # Southland Anniversary Day
    nz_time( 2013, 2, 4 ), # Nelson Anniversary Day
    nz_time( 2013, 3, 25 ), # Otago Anniversary Day
    nz_time( 2012, 1, 23 ), # Wellington Anniversary Day
    nz_time( 2012, 1, 16 ), # Southland Anniversary Day
    nz_time( 2012, 1, 30 ), # Nelson Anniversary Day
    nz_time( 2013, 11, 4 ), # Marlborough Anniversary Day
    nz_time( 2013, 11, 15 ), # Canterbury Anniversary Day
    nz_time( 2014, 1, 27 ), # Auckland Anniversary Day
    nz_time( 2013, 12, 2 ), # Westland Anniversary Day
    nz_time( 2013, 12, 2 ), # Chatham Islands Anniversary Day
    nz_time( 2014, 1, 20 ), # Wellington Anniversary Day
    nz_time( 2014, 4, 22 ), # Southland Anniversary Day
    nz_time( 2014, 2, 3 ), # Nelson Anniversary Day
    nz_time( 2014, 3, 10 ), # Taranaki Anniversary Day
    nz_time( 2014, 3, 24 ), # Otago Anniversary Day
    nz_time( 2013, 3, 11 ), # Taranaki Anniversary Day
    nz_time( 2013, 9, 23 ), # South Canterbury Anniversary Day
    nz_time( 2013, 10, 25 ), # Hawkes' Bay Anniversary Day
    nz_time( 2010, 1, 4 ), # Day after New Year's Day Public Holiday for employees who would not normally work on Saturday
    nz_time( 2010, 4, 25 ), # ANZAC Day
    nz_time( 2010, 2, 6 ), # Waitangi Day
    nz_time( 2011, 4, 25 ), # ANZAC Day
    nz_time( 2011, 2, 6 ), # Waitangi Day
    nz_time( 2014, 4, 25 ), # ANZAC Day
    nz_time( 2013, 4, 25 ), # ANZAC Day
    nz_time( 2014, 2, 6 ), # Waitangi Day
    nz_time( 2010, 1, 2 ), # Day after New Year's Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2011, 1, 1 ), # New Year's Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2011, 1, 2 ), # Day after New Year's Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2012, 4, 25 ), # ANZAC Day
    nz_time( 2012, 2, 6 ), # Waitangi Day
    nz_time( 2013, 2, 6 ), # Waitangi Day
    nz_time( 2014, 10, 27 ), # Labour Day
    nz_time( 2014, 12, 25 ), # Christmas Day
    nz_time( 2014, 6, 2 ), # Queen's Birthday
    nz_time( 2015, 1, 1 ), # New Year's Day
    nz_time( 2015, 4, 3 ), # Good Friday
    nz_time( 2014, 12, 26 ), # Boxing Day
    nz_time( 2015, 1, 2 ), # Day after New Year's Day
    nz_time( 2015, 4, 6 ), # Easter Monday
    nz_time( 2015, 12, 25 ), # Christmas Day
    nz_time( 2015, 6, 1 ), # Queen's Birthday
    nz_time( 2015, 10, 26 ), # Labour Day
    nz_time( 2015, 12, 28 ), # Boxing Day (Public Holiday for employees who would not normally work on Saturday)
    nz_time( 2016, 3, 25 ), # Good Friday
    nz_time( 2016, 1, 1 ), # New Year's Day
    nz_time( 2016, 1, 4 ), # Day after New Year's Day (Public Holiday for employees who would not normally work on Saturday)
    nz_time( 2016, 3, 28 ), # Easter Monday
    nz_time( 2016, 12, 25 ), # Christmas Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2016, 6, 6 ), # Queen's Birthday
    nz_time( 2016, 10, 24 ), # Labour Day
    nz_time( 2016, 12, 26 ), # Boxing Day
    nz_time( 2016, 12, 27 ), # Christmas Day (Public Holiday for employees who would not normally work on Sunday)
    nz_time( 2014, 10, 24 ), # Hawkes' Bay Anniversary Day
    nz_time( 2014, 11, 14 ), # Canterbury Anniversary Day
    nz_time( 2014, 9, 22 ), # South Canterbury Anniversary Day
    nz_time( 2014, 11, 3 ), # Marlborough Anniversary Day
    nz_time( 2014, 12, 1 ), # Westland Anniversary Day
    nz_time( 2014, 12, 1 ), # Chatham Islands Anniversary Day
    nz_time( 2015, 1, 19 ), # Wellington Anniversary Day
    nz_time( 2015, 4, 7 ), # Southland Anniversary Day
    nz_time( 2015, 1, 26 ), # Auckland Anniversary Day
    nz_time( 2015, 3, 23 ), # Otago Anniversary Day
    nz_time( 2015, 2, 2 ), # Nelson Anniversary Day
    nz_time( 2015, 3, 9 ), # Taranaki Anniversary Day
    nz_time( 2015, 10, 23 ), # Hawkes' Bay Anniversary Day
    nz_time( 2015, 9, 28 ), # South Canterbury Anniversary Day
    nz_time( 2015, 11, 2 ), # Marlborough Anniversary Day
    nz_time( 2015, 11, 30 ), # Westland Anniversary Day
    nz_time( 2015, 11, 13 ), # Canterbury Anniversary Day
    nz_time( 2016, 1, 25 ), # Wellington Anniversary Day
    nz_time( 2016, 3, 29 ), # Southland Anniversary Day
    nz_time( 2015, 11, 30 ), # Chatham Islands Anniversary Day
    nz_time( 2016, 2, 1 ), # Nelson Anniversary Day
    nz_time( 2016, 2, 1 ), # Auckland Anniversary Day
    nz_time( 2016, 3, 21 ), # Otago Anniversary Day
    nz_time( 2016, 3, 14 ), # Taranaki Anniversary Day
    nz_time( 2016, 9, 26 ), # South Canterbury Anniversary Day
    nz_time( 2016, 10, 21 ), # Hawkes' Bay Anniversary Day
    nz_time( 2016, 10, 31 ), # Marlborough Anniversary Day
    nz_time( 2016, 11, 11 ), # Canterbury Anniversary Day
    nz_time( 2016, 11, 28 ), # Westland Anniversary Day
    nz_time( 2016, 11, 28 ), # Chatham Islands Anniversary Day
    nz_time( 2015, 2, 6 ), # Waitangi Day
    nz_time( 2015, 4, 25 ), # ANZAC Day
    nz_time( 2016, 2, 6 ), # Waitangi Day
    nz_time( 2016, 4, 25 ), # ANZAC Day
    nz_time( 2016, 1, 2 ), # Day after New Year's Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2015, 12, 26 ), # Boxing Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2015, 4, 27 ), # ANZAC Day (Mondayised)
    nz_time( 2016, 2, 8 ), # Waitangi Day (Mondayised)
    nz_time( 2017, 1, 1 ), # New Year's Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2017, 1, 2 ), # Day after New Year's Day
    nz_time( 2017, 1, 3 ), # New Year's Day (Public Holiday for employees who would not normally work on Sunday)
    nz_time( 2017, 1, 23 ), # Wellington Anniversary
    nz_time( 2017, 1, 30 ), # Auckland Anniversary
    nz_time( 2017, 1, 30 ), # Nelson Anniversary
    nz_time( 2017, 3, 13 ), # Taranaki Anniversary
    nz_time( 2017, 2, 6 ), # Waitangi Day
    nz_time( 2017, 3, 20 ), # Otago Anniversary
    nz_time( 2017, 4, 14 ), # Good Friday
    nz_time( 2017, 4, 17 ), # Easter Monday
    nz_time( 2017, 4, 18 ), # Southland Anniversary
    nz_time( 2017, 6, 5 ), # Queen's Birthday
    nz_time( 2017, 9, 25 ), # Canterbury (South) Anniversary
    nz_time( 2017, 4, 25 ), # ANZAC Day
    nz_time( 2017, 10, 20 ), # Hawke's Bay Anniversary
    nz_time( 2017, 10, 23 ), # Labour Day
    nz_time( 2017, 10, 30 ), # Marlborough Anniversary
    nz_time( 2017, 11, 27 ), # Chatham Islands Anniversary
    nz_time( 2017, 11, 17 ), # Canterbury Anniversary
    nz_time( 2017, 12, 4 ), # Westland Anniversary
    nz_time( 2017, 12, 25 ), # Christmas Day
    nz_time( 2017, 12, 26 ), # Boxing Day
    nz_time( 2021, 12, 28 ), # Boxing Day (Public Holiday for employees who would not normally work on Sunday)
    nz_time( 2021, 12, 26 ), # Boxing Day (Public Holiday for employees who would normally work on Sunday)
    nz_time( 2021, 12, 27 ), # Christmas Day (Public Holiday for employees who would not normally work on Saturday)
    nz_time( 2021, 12, 25 ), # Christmas Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2021, 11, 29 ), # Chatham Islands Anniversary
    nz_time( 2021, 11, 29 ), # Westland Anniversary
    nz_time( 2021, 11, 12 ), # Canterbury Anniversary
    nz_time( 2021, 11, 1 ), # Marlborough Anniversary
    nz_time( 2021, 10, 25 ), # Labour Day
    nz_time( 2021, 10, 22 ), # Hawke's Bay Anniversary
    nz_time( 2021, 9, 27 ), # Canterbury (South) Anniversary
    nz_time( 2021, 6, 7 ), # Queen's Birthday
    nz_time( 2021, 4, 26 ), # ANZAC Day (Mondayised)
    nz_time( 2021, 4, 25 ), # ANZAC Day
    nz_time( 2021, 4, 6 ), # Southland Anniversary
    nz_time( 2021, 4, 5 ), # Easter Monday
    nz_time( 2021, 4, 2 ), # Good Friday
    nz_time( 2021, 3, 22 ), # Otago Anniversary
    nz_time( 2021, 3, 8 ), # Taranaki Anniversary
    nz_time( 2021, 2, 8 ), # Waitangi Day (Mondayised)
    nz_time( 2021, 2, 6 ), # Waitangi Day
    nz_time( 2021, 2, 1 ), # Nelson Anniversary
    nz_time( 2021, 2, 1 ), # Auckland Anniversary
    nz_time( 2021, 1, 25 ), # Wellington Anniversary
    nz_time( 2021, 1, 4 ), # Day after New Year's Day (Public Holiday for employees who would not normally work on Saturday)
    nz_time( 2021, 1, 2 ), # Day after New Year's Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2021, 1, 1 ), # New Year's Day
    nz_time( 2020, 12, 28 ), # Boxing Day (Public Holiday for employees who would not normally work on Saturday)
    nz_time( 2020, 12, 26 ), # Boxing Day (Public Holiday for employees who would normally work on Saturday)
    nz_time( 2020, 12, 25 ), # Christmas Day
    nz_time( 2020, 11, 30 ), # Chatham Islands Anniversary
    nz_time( 2020, 11, 30 ), # Westland Anniversary
    nz_time( 2020, 11, 13 ), # Canterbury Anniversary
    nz_time( 2020, 11, 2 ), # Marlborough Anniversary
    nz_time( 2020, 10, 26 ), # Labour Day
    nz_time( 2020, 10, 23 ), # Hawke's Bay Anniversary
    nz_time( 2020, 9, 28 ), # Canterbury (South) Anniversary
    nz_time( 2020, 6, 1 ), # Queen's Birthday
    nz_time( 2020, 4, 27 ), # ANZAC Day (Mondayised)
    nz_time( 2020, 4, 25 ), # ANZAC Day
    nz_time( 2020, 4, 14 ), # Southland Anniversary
    nz_time( 2020, 4, 13 ), # Easter Monday
    nz_time( 2020, 4, 10 ), # Good Friday
    nz_time( 2020, 3, 23 ), # Otago Anniversary
    nz_time( 2020, 3, 9 ), # Taranaki Anniversary
    nz_time( 2020, 2, 6 ), # Waitangi Day
    nz_time( 2020, 2, 3 ), # Nelson Anniversary
    nz_time( 2020, 1, 27 ), # Auckland Anniversary
    nz_time( 2020, 1, 20 ), # Wellington Anniversary
    nz_time( 2020, 1, 2 ), # Day after New Year's Day
    nz_time( 2020, 1, 1 ), # New Year's Day
    nz_time( 2019, 12, 26 ), # Boxing Day
    nz_time( 2019, 12, 25 ), # Christmas Day
    nz_time( 2019, 12, 2 ), # Chatham Islands Anniversary
    nz_time( 2019, 12, 2 ), # Westland Anniversary
    nz_time( 2019, 11, 15 ), # Canterbury Anniversary
    nz_time( 2019, 11, 4 ), # Marlborough Anniversary
    nz_time( 2019, 10, 28 ), # Labour Day
    nz_time( 2019, 10, 25 ), # Hawke's Bay Anniversary
    nz_time( 2019, 9, 23 ), # Canterbury (South) Anniversary
    nz_time( 2019, 6, 3 ), # Queen's Birthday
    nz_time( 2019, 4, 25 ), # ANZAC Day
    nz_time( 2019, 4, 23 ), # Southland Anniversary
    nz_time( 2019, 4, 22 ), # Easter Monday
    nz_time( 2019, 4, 19 ), # Good Friday
    nz_time( 2019, 3, 25 ), # Otago Anniversary
    nz_time( 2019, 3, 11 ), # Taranaki Anniversary
    nz_time( 2019, 2, 6 ), # Waitangi Day
    nz_time( 2019, 2, 4 ), # Nelson Anniversary
    nz_time( 2019, 1, 28 ), # Auckland Anniversary
    nz_time( 2019, 1, 21 ), # Wellington Anniversary
    nz_time( 2019, 1, 2 ), # Day after New Year's Day
    nz_time( 2019, 1, 1 ), # New Year's Day
    nz_time( 2018, 12, 26 ), # Boxing Day
    nz_time( 2018, 12, 25 ), # Christmas Day
    nz_time( 2018, 12, 3 ), # Chatham Islands Anniversary
    nz_time( 2018, 12, 3 ), # Westland Anniversary
    nz_time( 2018, 11, 16 ), # Canterbury Anniversary
    nz_time( 2018, 10, 29 ), # Marlborough Anniversary
    nz_time( 2018, 10, 22 ), # Labour Day
    nz_time( 2018, 10, 19 ), # Hawke's Bay Anniversary
    nz_time( 2018, 9, 24 ), # Canterbury (South) Anniversary
    nz_time( 2018, 6, 4 ), # Queen's Birthday
    nz_time( 2018, 4, 25 ), # ANZAC Day
    nz_time( 2018, 4, 3 ), # Southland Anniversary
    nz_time( 2018, 4, 2 ), # Easter Monday
    nz_time( 2018, 3, 30 ), # Good Friday
    nz_time( 2018, 3, 26 ), # Otago Anniversary
    nz_time( 2018, 3, 12 ), # Taranaki Anniversary
    nz_time( 2018, 2, 6 ), # Waitangi Day
    nz_time( 2018, 1, 29 ), # Nelson Anniversary
    nz_time( 2018, 1, 29 ), # Auckland Anniversary
    nz_time( 2018, 1, 22 ), # Wellington Anniversary
    nz_time( 2018, 1, 2 ), # Day after New Year's Day
    nz_time( 2018, 1, 1 ), # New Year's Day
  ]

  ANNIVERSARIES = [
    nz_time( 2008, 12, 1 ), # Westland Anniversary Day
    nz_time( 2008, 12, 1 ), # Chatham Islands Anniversary Day
    nz_time( 2009, 1, 26 ), # Auckland Anniversary Day
    nz_time( 2009, 1, 19 ), # Wellington Anniversary Day
    nz_time( 2009, 2, 2 ), # Nelson Anniversary Day
    nz_time( 2009, 1, 19 ), # Southland Anniversary Day
    nz_time( 2009, 3, 9 ), # Taranaki Anniversary Day
    nz_time( 2009, 9, 28 ), # South Canterbury Anniversary Day
    nz_time( 2009, 11, 13 ), # Canterbury Anniversary Day
    nz_time( 2009, 11, 30 ), # Chatham Islands Anniversary Day
    nz_time( 2010, 1, 25 ), # Wellington Anniversary Day
    nz_time( 2009, 11, 30 ), # Westland Anniversary Day
    nz_time( 2010, 2, 1 ), # Auckland Anniversary Day
    nz_time( 2010, 3, 8 ), # Taranaki Anniversary Day
    nz_time( 2010, 1, 18 ), # Southland Anniversary Day
    nz_time( 2010, 2, 1 ), # Nelson Anniversary Day
    nz_time( 2010, 9, 27 ), # South Canterbury Anniversary Day
    nz_time( 2010, 3, 22 ), # Otago Anniversary Day
    nz_time( 2010, 11, 1 ), # Marlborough Anniversary Day
    nz_time( 2010, 10, 22 ), # Hawkes' Bay Anniversary Day
    nz_time( 2009, 3, 23 ), # Otago Anniversary Day
    nz_time( 2009, 11, 2 ), # Marlborough Anniversary Day
    nz_time( 2009, 10, 23 ), # Hawkes' Bay Anniversary Day
    nz_time( 2010, 11, 29 ), # Chatham Islands Anniversary Day
    nz_time( 2011, 1, 31 ), # Nelson Anniversary Day
    nz_time( 2011, 1, 17 ), # Southland Anniversary Day
    nz_time( 2011, 1, 24 ), # Wellington Anniversary Day
    nz_time( 2011, 3, 14 ), # Taranaki Anniversary Day
    nz_time( 2011, 9, 26 ), # South Canterbury Anniversary Day
    nz_time( 2011, 3, 21 ), # Otago Anniversary Day
    nz_time( 2011, 10, 21 ), # Hawkes' Bay Anniversary Day
    nz_time( 2011, 11, 11 ), # Canterbury Anniversary Day
    nz_time( 2011, 10, 31 ), # Marlborough Anniversary Day
    nz_time( 2011, 12, 5 ), # Westland Anniversary Day
    nz_time( 2011, 11, 28 ), # Chatham Islands Anniversary Day
    nz_time( 2012, 1, 30 ), # Auckland Anniversary Day
    nz_time( 2010, 11, 29 ), # Westland Anniversary Day
    nz_time( 2011, 1, 31 ), # Auckland Anniversary Day
    nz_time( 2010, 11, 12 ), # Canterbury Anniversary Day
    nz_time( 2012, 3, 12 ), # Taranaki Anniversary Day
    nz_time( 2012, 3, 26 ), # Otago Anniversary Day
    nz_time( 2012, 9, 24 ), # South Canterbury Anniversary Day
    nz_time( 2012, 10, 19 ), # Hawkes' Bay Anniversary Day
    nz_time( 2012, 11, 16 ), # Canterbury Anniversary Day
    nz_time( 2012, 10, 29 ), # Marlborough Anniversary Day
    nz_time( 2013, 1, 28 ), # Auckland Anniversary Day
    nz_time( 2012, 12, 3 ), # Westland Anniversary Day
    nz_time( 2012, 12, 3 ), # Chatham Islands Anniversary Day
    nz_time( 2013, 1, 21 ), # Wellington Anniversary Day
    nz_time( 2013, 1, 21 ), # Southland Anniversary Day
    nz_time( 2013, 2, 4 ), # Nelson Anniversary Day
    nz_time( 2013, 3, 25 ), # Otago Anniversary Day
    nz_time( 2012, 1, 23 ), # Wellington Anniversary Day
    nz_time( 2012, 1, 16 ), # Southland Anniversary Day
    nz_time( 2012, 1, 30 ), # Nelson Anniversary Day
    nz_time( 2013, 11, 4 ), # Marlborough Anniversary Day
    nz_time( 2013, 11, 15 ), # Canterbury Anniversary Day
    nz_time( 2014, 1, 27 ), # Auckland Anniversary Day
    nz_time( 2013, 12, 2 ), # Westland Anniversary Day
    nz_time( 2013, 12, 2 ), # Chatham Islands Anniversary Day
    nz_time( 2014, 1, 20 ), # Wellington Anniversary Day
    nz_time( 2014, 4, 22 ), # Southland Anniversary Day
    nz_time( 2014, 2, 3 ), # Nelson Anniversary Day
    nz_time( 2014, 3, 10 ), # Taranaki Anniversary Day
    nz_time( 2014, 3, 24 ), # Otago Anniversary Day
    nz_time( 2013, 3, 11 ), # Taranaki Anniversary Day
    nz_time( 2013, 9, 23 ), # South Canterbury Anniversary Day
    nz_time( 2013, 10, 25 ), # Hawkes' Bay Anniversary Day
    nz_time( 2014, 10, 24 ), # Hawkes' Bay Anniversary Day
    nz_time( 2014, 11, 14 ), # Canterbury Anniversary Day
    nz_time( 2014, 9, 22 ), # South Canterbury Anniversary Day
    nz_time( 2014, 11, 3 ), # Marlborough Anniversary Day
    nz_time( 2014, 12, 1 ), # Westland Anniversary Day
    nz_time( 2014, 12, 1 ), # Chatham Islands Anniversary Day
    nz_time( 2015, 1, 19 ), # Wellington Anniversary Day
    nz_time( 2015, 4, 7 ), # Southland Anniversary Day
    nz_time( 2015, 1, 26 ), # Auckland Anniversary Day
    nz_time( 2015, 3, 23 ), # Otago Anniversary Day
    nz_time( 2015, 2, 2 ), # Nelson Anniversary Day
    nz_time( 2015, 3, 9 ), # Taranaki Anniversary Day
    nz_time( 2015, 10, 23 ), # Hawkes' Bay Anniversary Day
    nz_time( 2015, 9, 28 ), # South Canterbury Anniversary Day
    nz_time( 2015, 11, 2 ), # Marlborough Anniversary Day
    nz_time( 2015, 11, 30 ), # Westland Anniversary Day
    nz_time( 2015, 11, 13 ), # Canterbury Anniversary Day
    nz_time( 2016, 1, 25 ), # Wellington Anniversary Day
    nz_time( 2016, 3, 29 ), # Southland Anniversary Day
    nz_time( 2015, 11, 30 ), # Chatham Islands Anniversary Day
    nz_time( 2016, 2, 1 ), # Nelson Anniversary Day
    nz_time( 2016, 2, 1 ), # Auckland Anniversary Day
    nz_time( 2016, 3, 21 ), # Otago Anniversary Day
    nz_time( 2016, 3, 14 ), # Taranaki Anniversary Day
    nz_time( 2016, 9, 26 ), # South Canterbury Anniversary Day
    nz_time( 2016, 10, 21 ), # Hawkes' Bay Anniversary Day
    nz_time( 2016, 10, 31 ), # Marlborough Anniversary Day
    nz_time( 2016, 11, 11 ), # Canterbury Anniversary Day
    nz_time( 2016, 11, 28 ), # Westland Anniversary Day
    nz_time( 2016, 11, 28 ), # Chatham Islands Anniversary Day
    nz_time( 2017, 1, 23 ), # Wellington Anniversary
    nz_time( 2017, 1, 30 ), # Auckland Anniversary
    nz_time( 2017, 1, 30 ), # Nelson Anniversary
    nz_time( 2017, 3, 13 ), # Taranaki Anniversary
    nz_time( 2017, 3, 20 ), # Otago Anniversary
    nz_time( 2017, 4, 18 ), # Southland Anniversary
    nz_time( 2017, 9, 25 ), # Canterbury (South) Anniversary
    nz_time( 2017, 10, 20 ), # Hawke's Bay Anniversary
    nz_time( 2017, 10, 30 ), # Marlborough Anniversary
    nz_time( 2017, 11, 27 ), # Chatham Islands Anniversary
    nz_time( 2017, 11, 17 ), # Canterbury Anniversary
    nz_time( 2017, 12, 4 ), # Westland Anniversary
    nz_time( 2021, 11, 29 ), # Chatham Islands Anniversary
    nz_time( 2021, 11, 29 ), # Westland Anniversary
    nz_time( 2021, 11, 12 ), # Canterbury Anniversary
    nz_time( 2021, 11, 1 ), # Marlborough Anniversary
    nz_time( 2021, 10, 22 ), # Hawke's Bay Anniversary
    nz_time( 2021, 9, 27 ), # Canterbury (South) Anniversary
    nz_time( 2021, 4, 6 ), # Southland Anniversary
    nz_time( 2021, 3, 22 ), # Otago Anniversary
    nz_time( 2021, 3, 8 ), # Taranaki Anniversary
    nz_time( 2021, 2, 1 ), # Nelson Anniversary
    nz_time( 2021, 2, 1 ), # Auckland Anniversary
    nz_time( 2021, 1, 25 ), # Wellington Anniversary
    nz_time( 2020, 11, 30 ), # Chatham Islands Anniversary
    nz_time( 2020, 11, 30 ), # Westland Anniversary
    nz_time( 2020, 11, 13 ), # Canterbury Anniversary
    nz_time( 2020, 11, 2 ), # Marlborough Anniversary
    nz_time( 2020, 10, 23 ), # Hawke's Bay Anniversary
    nz_time( 2020, 9, 28 ), # Canterbury (South) Anniversary
    nz_time( 2020, 4, 14 ), # Southland Anniversary
    nz_time( 2020, 3, 23 ), # Otago Anniversary
    nz_time( 2020, 3, 9 ), # Taranaki Anniversary
    nz_time( 2020, 2, 3 ), # Nelson Anniversary
    nz_time( 2020, 1, 27 ), # Auckland Anniversary
    nz_time( 2020, 1, 20 ), # Wellington Anniversary
    nz_time( 2019, 12, 2 ), # Chatham Islands Anniversary
    nz_time( 2019, 12, 2 ), # Westland Anniversary
    nz_time( 2019, 11, 15 ), # Canterbury Anniversary
    nz_time( 2019, 11, 4 ), # Marlborough Anniversary
    nz_time( 2019, 10, 25 ), # Hawke's Bay Anniversary
    nz_time( 2019, 9, 23 ), # Canterbury (South) Anniversary
    nz_time( 2019, 4, 23 ), # Southland Anniversary
    nz_time( 2019, 3, 25 ), # Otago Anniversary
    nz_time( 2019, 3, 11 ), # Taranaki Anniversary
    nz_time( 2019, 2, 4 ), # Nelson Anniversary
    nz_time( 2019, 1, 28 ), # Auckland Anniversary
    nz_time( 2019, 1, 21 ), # Wellington Anniversary
    nz_time( 2018, 12, 3 ), # Chatham Islands Anniversary
    nz_time( 2018, 12, 3 ), # Westland Anniversary
    nz_time( 2018, 11, 16 ), # Canterbury Anniversary
    nz_time( 2018, 10, 29 ), # Marlborough Anniversary
    nz_time( 2018, 10, 19 ), # Hawke's Bay Anniversary
    nz_time( 2018, 9, 24 ), # Canterbury (South) Anniversary
    nz_time( 2018, 4, 3 ), # Southland Anniversary
    nz_time( 2018, 3, 26 ), # Otago Anniversary
    nz_time( 2018, 3, 12 ), # Taranaki Anniversary
    nz_time( 2018, 1, 29 ), # Nelson Anniversary
    nz_time( 2018, 1, 29 ), # Auckland Anniversary
    nz_time( 2018, 1, 22 ), # Wellington Anniversary
  ]

  def self.nz_public_holiday?(query)
    !!HOLIDAYS.find do |hol|
      hol.year == query.year && hol.month == query.month && hol.day == query.day
    end
  end

  def self.nz_anniversary?(query)
    !!ANNIVERSARIES.find do |hol|
      hol.year == query.year && hol.month == query.month && hol.day == query.day
    end
  end

end
