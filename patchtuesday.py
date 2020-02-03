import datetime
import calendar
from datetime import timedelta

#set first weekday
c = calendar.Calendar(firstweekday=calendar.SUNDAY)

####################
#  Set this stuff  #
####################

#set the year
year = 2020
#offset in days from patch Tuesday. 3 = Friday, 4 = Saturday, 5 = Sunday
offsetDays = 4
#set the offset in weeks. W1 = 0, W2 = 1, W3 = 2, W4 = 3
offsetWeeks = 1


#turn it into days because we can only do math in days
offsetWeeks = offsetWeeks * 7

#loop through all months
month = 1
while month <= 12:
       monthcal = c.monthdatescalendar(year,month)
       #get second Tuesday
       secondTues = [day for week in monthcal for day in week if day.weekday() == calendar.TUESDAY and day.month == month][1]
       #add offset
       offsetDate = secondTues + datetime.timedelta(days=offsetDays) + datetime.timedelta(days=offsetWeeks)
       print(offsetDate)
       month += 1
