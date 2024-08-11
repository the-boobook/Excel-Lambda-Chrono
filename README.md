# EXCEL-LAMBDA-CHRONO

Module for date and time operations in the Gregorian and Julian calendars outside the range of the Excel Date/Time type.

## General Guidance

* Use the Modified Julian Day Number (MJDN) functions when working solely with calendar dates. Julian Day Numbers do not confer any time information.
* Use the Modified Julian Date (MJDATE) functions when working with date and time values.

## Time Zones

Data sourced from: https://data.iana.org/time-zones/tz-link.html
https://www.iana.org/time-zones/repository/tzcode-latest.tar.gz
https://www.iana.org/time-zones/repository/tzdata-latest.tar.gz

## TODO
MJDATE_TO_ISO_DATETIME(D285) seems to be rounding down minutes unecessaryily
21229.00069  =   1917-01-01T00:00

 FORMAT_ISO_DATETIME  use timezone fns ?

