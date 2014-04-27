#!/bin/sh

# Get the date aspects
s_year=`date +%Y -d "yesterday"`
s_month=`date +%m -d "yesterday"`
s_day=`date +%d -d "yesterday"`

fulldate=`date +%F`

# Create the search string
search=$s_year$s_month$s_day"000001"

# Create the filename
filename=$fulldate".gpx"

echo "Searchstring: "$search
echo "Output filename: "$filename

BABEL=`sudo gpsbabel -t -i garmin,snwhite=0,get_posn=0,power_off=0,erase_t=0,resettime=0 -f usb: -x track,start=$search -o gpx,suppresswhite=0,logpoint=0,humminbirdextensions=0,garminextensions=1 -F /home/rudi.strydom/Excersize/$filename`
echo $?
echo "RAN it!"

