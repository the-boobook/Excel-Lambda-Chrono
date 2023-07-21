# Excel-Lambda-Calendar

Module for working with dates in the Gregorian and Julian calendars outside the range of the Excel Date/Time type.

## General Guidance

* Use the Julian Day Number (JDN) functions when working solely with calendar dates. Julian Day Numbers do not confer any time information.
* Use the Julian Date (JDATE) functions when working with date and time values. Note Julian Dates are based on UTC.


## FUNCTIONS

LOGICAL                | <!-- -->
--                     | --
IS_LEAP_YEAR           | Tests if a year includes a leap day in the given calendar.
IS_VALID_DATE          | Tests if a date is valid for the given calendar.
IS_VALID_TIME          | Tests if a time is valid in the 24 hour timekeeping system.

  
CALENDAR DATES         | <!-- -->
--                     | --
YEAR_COMMON_ERA        | Returns year value relative to the Common Era.
DAYS_IN_YEAR           | Returns number of days in the given year of the specified calendar.
DAYS_IN_MONTH          | Returns number of days in the given month and year of the specified calendar.
JULIAN_DAY_NUMBER      | Returns the Julian Day Number of the provided date in the specified calendar.
JDN_TO_CALENDAR_DATE   | Returns the date from the given Julian Day Number in the specified calendar.
JDN_TO_ORDINAL_DATE    | Returns the year, ordinal day of year and days in the year from the given Julian Day Number in the specified calendar.
ORDINAL_DATE_TO_JDN    | Returns the Julian Day Number of the provided ordinal date in the specified calendar.
GREGORIAN_TO_JULIAN    | Translates a date in the Gregorian proleptic calendar to the Julian proleptic calendar.
JULIAN_TO_GREGORIAN    | Translates a date in the Julian proleptic calendar to the Gregorian proleptic calendar.
SECULAR_DIFFERENCE     | Returns the number of days the Gregorian proleptic calendar is ahead of the Julian proleptic calendar for a given date.

WEEKS                  | <!-- -->
--                     | --
DAY_OF_WEEK            | Returns an integer for the day of the week for a given Julian Day Number.
CONVERT_WEEKDAY_NUMBER | Returns an integer for the day of the week from the traditonal numbering scheme to the ISO definition, or vice versa.
WEEKDAY_OF_MONTH       | Returns a Julian Day Number for a given day of week, and a relative week for the month and year of the specified calendar.
WEEKS_IN_YEAR          | Returns the count of ISO defined weeks in a given year of the specified calendar.
WEEK_DATE_TO_JDN       | Returns the Julian Day Number of the provided week date in the specified calendar.
JDN_TO_WEEK_DATE       | Returns the year, ISO defined week number, day of the week, and weeks in the year for the given Julian Day Number in the specified calendar.
WEEK_NUMBER            | Returns the ISO defined week number for a given Julian Day Number in the specified calendar.

QUARTERS               | <!-- -->
--                     | --
DAYS_IN_QUARTER        | Returns the count of days in a quarter of a given year of the specified calendar.
JDN_TO_QUARTER_DATE    | Returns the year, quarter, day of quarter and days in the quarter for the given Julian Day Number in the specified calendar.
QUARTER_DATE_TO_JDN    | Returns the Julian Day Number of the provided quarter date in the specified calendar.

DATE AND TIME          | <!-- -->
--                     | --
JDN_UTC_TO_JDATE       | Returns the Julian Date given an Julian Day Number and time of day in UTC.
JDN_LOCAL_TO_JDATE     | Returns the Julian Date given a local Julian Day Number and local time of day with time zone offset in minutes.
JDATE_TO_JDN_UTC       | Returns the Julian Day Number and time of day in UTC of a given Julian Date.
JDATE_TO_JDN_LOCAL     | Returns the local Julian Day Number and time of day of a given Julian Date.
JULIAN_DATE            | Returns the Julian Date of the provided calendar date and time of day.
CALENDAR_FROM_JDATE    | Returns the calendar date and local time of day for a given Julian Date and time zone offset.
TIME_DECIMAL_TO_HMS    | Returns the 24 hour timekeeping representation of a decimal time value.
HMS_TO_TIME_DECIMAL    | Returns a decimal time as a fraction of a day from a 24 hour timekeeping value of time.
JDN_LOCAL_ADDITION     | Returns the addition of a timespan complication to a given local Julian Day Number and local time of day.
JDATE_ADDITION         | Returns the addition of a timespan complication to a given Julian Date.
RESOLVE_DATE           | Returns a calendar date from provided decimal year, months, days and time.

DELTA                  | <!-- -->
--                     | --
DELTA_INTERVAL         | Returns the timespan difference between Julian Dates in the specified units.
DELTA_HOURS            | Returns the timespan difference between Julian Dates in hours.
DELTA_MINUTES          | Returns the timespan difference between Julian Dates in minutes.
DELTA_SECONDS          | Returns the timespan difference between Julian Dates in seconds.
DELTA_HOUR_MIN_SEC     | Returns the timespan difference between Julian Dates in hours, minutes and seconds.
DELTA_DAYS             | Returns the timespan difference between Julian Dates in days.
DELTA_WEEKS            | Returns the timespan difference between Julian Dates in weeks.
DELTA_MONTHS           | Returns the timespan difference between Julian Dates in months.
DELTA_QUARTERS         | Returns the timespan difference between Julian Dates in quarters.
DELTA_YEARS            | Returns the timespan difference between Julian Dates in years.
DELTA_WEEK_DAYS        | Returns the timespan difference between Julian Dates in weeks and days.
DELTA_YEAR_WEEK_DAYS   | Returns the timespan difference between Julian Dates in years, weeks and days.
DELTA_MONTH_DAYS       | Returns the timespan difference between Julian Dates in months and days.
DELTA_QUARTER_DAYS     | Returns the timespan difference between Julian Dates in quarters and days.

EXTENT                 | <!-- -->
--                     | --
EXTENT_OF_DAYS         | Returns the inclusive extent of days spanned by two Julian Dates.
EXTENT_OF_WEEKS        | Returns the inclusive extent of weeks spanned by two Julian Dates.
EXTENT_OF_MONTHS       | Returns the inclusive extent of months spanned by two Julian Dates.
EXTENT_OF_QUARTERS     | Returns the inclusive extent of quarters spanned by two Julian Dates.
EXTENT_OF_YEARS        | Returns the inclusive extent of years spanned by two Julian Dates.

PARSING                | <!-- -->
--                     | --
PARSE_ISO_DATE         | Parses an ISO formatted date into respective parts of year, month, day, time of day and time zone offset in minutes from UTC.
PARSE_WEEKDAY          | Returns a number representing the day of the week from a given text weekday name.
PARSE_MONTH            | Returns a number representing the month of year from a given month name.
PARSE_LITERARY_YEAR    | Returns a number representing the year relative to the common era from a given literary year.
PARSE_LITERARY_DATE    | Parses a literary date into respective parts of year, month, day and time of day.
PARSE_US_DATE          | Parses a US formatted date into respective parts of year, month, day and time of day.
PARSE_MIL_DTG          | Parses a date-time group in the format used by US Military message traffic, into respective parts of year, month, day, time of day and time zone offset in minutes from UTC.

TEXT                   | <!-- -->
--                     | --
WEEKDAY_NAME           | Returns name of an ISO day of week number as text.
MONTH_NAME             | Returns name of month.
FORMAT_ISO_DATE        | Returns a date as text in ISO format.
FORMAT_LITERARY_YEAR   | Returns a year formatted in literary style.
FORMAT_LITERARY_DATE   | Returns a date formatted in literary style.
FORMAT_US_DATE         | Returns a date formatted in the US style.
FORMAT_MIL_DTG         | Returns a date-time group formatted in US Military message traffic style.

CONVERSION             | <!-- -->
--                     | --
ISODATE_TO_JDN_LOCAL   | Returns the Julian Day Number and local time for a date and time provided in ISO format.
ISODATE_TO_JDATE       | Returns the Julian Date for a date and time provided in ISO format.
ISODATE_TO_EDATE       | Returns an Excel Date/Time for a date and time provided in ISO format.
JDATE_TO_ISODATE       | Returns ISO format date, time and time zone offset from a  Julian Date.
JDN_LOCAL_TO_ISODATE   | Returns ISO format date, time and time zone offset for the provided Julian Day Number and local time.
EDATE_TO_ISODATE       | Returns ISO format date, time and time zone offset from an Excel Date/Time.
EDATE_TO_JDATE         | Returns the Julian Date for the provided Excel Date/Time.
EDATE_TO_JDN_LOCAL     | Returns the Julian Day Number and local time for the provided Excel Date/Time.
JDN_LOCAL_TO_EDATE     | Returns an Excel Date/Time for the provided Julian Day Number and local time.
JDATE_TO_EDATE         | Returns an Excel Date/Time for the provided Julian Date.
USDATE_TO_EDATE        | Returns an Excel Date/Time for the provided US format date and time.
EDATE_TO_USDATE        | Returns a US format date and time for the provided Excel Date/Time.


## To Do

JDN algorithm see if can simplify quarters offset algorithm similar
Check precison functions in other functions
