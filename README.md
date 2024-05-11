# EXCEL-LAMBDA-CHRONO

Module for working with dates and time in the Gregorian and Julian calendars outside the range of the Excel Date/Time type.

## General Guidance

* Use the Modified Julian Day Number (MJDN) functions when working solely with calendar dates. Julian Day Numbers do not confer any time information.
* Use the Julian Date (JDATE) functions when working with date and time values.

## Placeholder

day vs time in MJDN functions

DELTAS

come back to ISO_WEEKDAY 
->  MODIFIED_JULIAN_DATE(Date_YMDT))
come back to shifttimezone
->  ISO_DATETIME_TO_MJDATE





MODIFIED_JULIAN_DATE
    JULIAN_DATE
RESOLVE_YMDT

check where round and resolve normalise timespan used


FORMAT_ISO_DATETIME  - note fix up how it assesses day / time mix of decimal
FORMAT_LITERARY_DATE
FORMAT_US_DATE

## To Do

check & / concat
options string methods 
xmatch methods


=CALENDAR.ISO_DATETIME_TO_MJDATE(A47)
B47 on CALENDAR_TIMEZONE worksheet

remove concat where not necessary
