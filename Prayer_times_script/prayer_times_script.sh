# This script is been developed by kabantsh on 2024-03-31   
# for more information please contact with the email kabantsh@gmail.com
################
# Prerequisits:-
################
#1- Operating System
#------------------- 
# Linux or Android Termux
#
#2- Bash version                                                                
#------------------
#5.0 or higher
#
#3- Packages version
#-----------------------
#- Curl version (8.0 or higher)
#- Wget version (1.2 or higher)
##%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

set -x
PRAYER_URL="https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8"
#PWD="`PWD`"
MY_PRAYER_OUTPUT_DIR="`pwd`/output_prayer_times"
> "$MY_PRAYER_OUTPUT_DIR"
mkdir -p $MY_PRAYER_OUTPUT_DIR
MY_PRAYER_OUTPUT_FILE="`printf `$MY_PRAYER_OUTPUT_DIR/prayer_times_script.log"

#wget -o $MY_PRAYER_OUTPUT_FILE "https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8"
#curl -o $MY_PRAYER_OUTPUT_FILE "https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8" 
restish get "https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8" | tee -a "$MY_PRAYER_OUTPUT_FILE"
#wget "$PRAYER_URL"
set +x



# Reference URL
# !!!!!!!!!!!!!!¡¡!!!!!!!!!!!!!!!!!!!!!
#https://aladhan.com/prayer-times-api
# https://api.aladhan.com/v1/timingsByAddress/31-03-2024?address=Dubai,UAE&method=8
# !!!!!!!!!!!!!!¡¡!!!!!!!!!!!!!!!!!!!!!
